import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:ciyashopflutter/model/auth_model.dart' as auth;
import 'package:ciyashopflutter/model/forget_password_model.dart' as forget_pass;
import 'package:ciyashopflutter/repository/api_helper/api_constant.dart';
import 'package:ciyashopflutter/repository/api_helper/api_services.dart';
import 'package:ciyashopflutter/repository/api_helper/api_status.dart';
import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

abstract class UserAuthenticationRepository {
  googleLogin();

  facebookLogin();

  appleLogin();

  callLogin({required String email, required String password});

  callSocialLogin();

  callForgetPassword({required String email});

  callResetPassword({required String email, required String password, required String key});

  callRegistration({required Map<String, dynamic> userDetail});

  verifyPhoneAuth();

  signOut();

  logout();
}

class UserAuthenticationRepositoryImpl extends UserAuthenticationRepository {
  final _auth = FirebaseAuth.instance;
  User? _user;

  @override
  callLogin({required String email, required String password}) async {
    var params = {
      APIConstant.instance.email: email,
      APIConstant.instance.password: password,
      APIConstant.instance.deviceType: Platform.isIOS ? "1" : "2",
      APIConstant.instance.deviceToken: ""
    };

    var response = await ApiServices.instance.postAPICall(
      param: params,
      url: APIConstant.instance.signInApi,
      paramType: ParamType.raw,
    );

    if (response is Success) {
      return auth.authModelFromJson(response.response.toString());
    } else if (response is Failure) {
      return response;
    }
  }

  @override
  callRegistration({required Map<String, dynamic> userDetail}) async {
    var params = {
      APIConstant.instance.email: userDetail["email"] ?? "",
      APIConstant.instance.userName: userDetail["username"] ?? "",
      APIConstant.instance.mobile: userDetail["mobile"] ?? "",
      APIConstant.instance.password: userDetail["password"] ?? "",
      APIConstant.instance.deviceType: Platform.isIOS ? "1" : "2",
      APIConstant.instance.deviceToken: ""
    };
    var response = await ApiServices.instance.postAPICall(
      param: params,
      url: APIConstant.instance.signInApi,
      paramType: ParamType.raw,
    );

    if (response is Success) {
      return auth.authModelFromJson(response.response.toString());
    } else if (response is Failure) {
      return response;
    }
  }

  @override
  googleLogin() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn(
      signInOption: SignInOption.standard,
      scopes: [
        'https://www.googleapis.com/auth/user.emails.read',
        // 'https://www.googleapis.com/auth/user.gender.read',
        // 'https://www.googleapis.com/auth/userinfo.profile'
      ],
    );
    final googleSignInAccount = await _googleSignIn.signIn();
    if (googleSignInAccount != null) {
      //authentication
      final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

      //credential
      final AuthCredential googleAuthCredential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      return _firebaseAuthentication(googleAuthCredential);
    }
  }

  @override
  facebookLogin() async {
    final LoginResult result = await FacebookAuth.instance.login(permissions: ["public_profile", "email"]);
    if (result.status == LoginStatus.success) {
      final accessToken = result.accessToken;
      if (accessToken != null) {
        final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(accessToken.token);
        return _firebaseAuthentication(facebookAuthCredential);
      } else {
        return "error facebook login";
      }
    }
  }

  @override
  appleLogin() async {
    final rawNonce = generateNonce();
    final nonce = sha256ofString(rawNonce);
    // Request credential for the currently signed in Apple account.
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: nonce,
    );
    // Create an `OAuthCredential` from the credential returned by Apple.
    final oauthCredential = OAuthProvider("apple.com").credential(
      idToken: appleCredential.identityToken,
      rawNonce: rawNonce,
    );

    return _firebaseAuthentication(oauthCredential);
  }

  @override
  callSocialLogin() {
    // TODO: implement callSocialLogin
    throw UnimplementedError();
  }

  @override
  signOut() {
    if (_auth.currentUser != null) {
      _auth.signOut();
    }
  }

  _firebaseAuthentication(oauthCredential) async {
    try {
      final UserCredential userCredential = await _auth.signInWithCredential(oauthCredential);
      _user = userCredential.user;
      return _user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        return e;
      } else if (e.code == 'invalid-credential') {
        return e;
      }
    } catch (e) {
      return e;
    }
  }

  @override
  verifyPhoneAuth() {}

  @override
  callForgetPassword({required String email}) async {
    var params = {
      APIConstant.instance.email: email,
    };

    var response = await ApiServices.instance.postAPICall(
      param: params,
      url: APIConstant.instance.forgotPasswordApi,
      paramType: ParamType.raw,
    );

    if (response is Success) {
      return forget_pass.forgetPasswordModelFromJson(response.response.toString());
    } else if (response is Failure) {
      return response;
    }
  }

  @override
  callResetPassword({required String email, required String password, required String key}) async {
    var params = {
      APIConstant.instance.email: email,
      APIConstant.instance.password: password,
      APIConstant.instance.key: key,
    };

    var response = await ApiServices.instance.postAPICall(
      param: params,
      url: APIConstant.instance.updatePasswordApi,
      paramType: ParamType.raw,
    );

    if (response is Success) {
      return forget_pass.forgetPasswordModelFromJson(response.response.toString());
    } else if (response is Failure) {
      return response;
    }
  }

  @override
  logout() async {
    var response = await ApiServices.instance.postAPICall(
      param: {},
      url: APIConstant.instance.logoutApi,
      paramType: ParamType.raw,
    );
    if (response is Success) {
      return forget_pass.forgetPasswordModelFromJson(response.response.toString());
    } else if (response is Failure) {
      return response;
    }

  }
}

/// Generates a cryptographically secure random nonce, to be included in a
/// credential request.
String generateNonce([int length = 32]) {
  const charset = '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
  final random = Random.secure();
  return List.generate(length, (_) => charset[random.nextInt(charset.length)]).join();
}

/// Returns the sha256 hash of [input] in hex notation.
String sha256ofString(String input) {
  final bytes = utf8.encode(input);
  final digest = sha256.convert(bytes);
  return digest.toString();
}

// Future<String> getGender() async {
//   final headers = await googleSignIn.currentUser.authHeaders;
//   final r = await http.get("https://people.googleapis.com/v1/people/me?personFields=genders&key=",
//       headers: {
//         "Authorization": headers["Authorization"]
//       }
//   );
//   final response = JSON.jsonDecode(r.body);
//   return response["genders"][0]["formattedValue"];
// }
