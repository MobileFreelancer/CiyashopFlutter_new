import 'package:ciyashopflutter/controller/user_info_controller.dart';
import 'package:ciyashopflutter/model/auth_model.dart';
import 'package:ciyashopflutter/repository/api_helper/api_status.dart';
import 'package:ciyashopflutter/repository/user_authentication_repository.dart';
import 'package:ciyashopflutter/utils/routers.dart';
import 'package:ciyashopflutter/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  var emailController = TextEditingController(text: kDebugMode ? "dhruv@yopmail.com" : "");
  var passwordController = TextEditingController(text: kDebugMode ? "123456" : "");

  final UserAuthenticationRepositoryImpl _userAuthenticationRepository = UserAuthenticationRepositoryImpl();

  loginWithGoogle(BuildContext context) async {
    var result = await _userAuthenticationRepository.googleLogin();
    if (result is User) {
      debugPrint(result.toString());
    }
  }

  loginWithFacebook(BuildContext context) async {
    var result = await _userAuthenticationRepository.facebookLogin();
    if (result is User) {
      debugPrint(result.toString());
    }
  }

  loginWithApple(BuildContext context) async {
    var result = await _userAuthenticationRepository.appleLogin();
    if (result is User) {
      debugPrint(result.toString());
    }
  }

  userLogin(context) async {
    FocusScope.of(context).unfocus();
    if (emailController.text.isEmpty) {
      showToast(Msg: "enter email");
    } else if (passwordController.value.text.isEmpty) {
      showToast(Msg: "enter password");
    } else {
      showLoader();
      var result =
          await _userAuthenticationRepository.callLogin(email: emailController.text, password: passwordController.text);
      print("result $result");
      hideLoader();
      if (result is AuthModel) {
        if (result.status == "success") {
          await Get.put(UserinfoController()).setUserDataByModel(userInfo: result.user ?? User());
          Get.offNamed(RoutesName.mainScreen);
        }
      } else if (result is Failure) {
        showToast(Msg: result.errorResponse.toString());
      }
    }
  }
}
