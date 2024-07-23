import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/component/custom_text_field.dart';
import 'package:ciyashopflutter/controller/user_info_controller.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/model/auth_model.dart';
import 'package:ciyashopflutter/model/forget_password_model.dart';
import 'package:ciyashopflutter/repository/api_helper/api_status.dart';
import 'package:ciyashopflutter/repository/user_authentication_repository.dart';
import 'package:ciyashopflutter/utils/routers.dart';
import 'package:ciyashopflutter/utils/size_constant.dart';
import 'package:ciyashopflutter/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  var emailController = TextEditingController(text: kDebugMode ? "dhruv@yopmail.com" : "");
  var passwordController = TextEditingController(text: kDebugMode ? "123456" : "");

  //forget password
  var forgetPassEmailController = TextEditingController(text: kDebugMode ? "dhruv@yopmail.com" : "");

  //reset password
  var resetPasswordController = TextEditingController();
  var resetConfirmPasswordController = TextEditingController();
  var resetPinController = TextEditingController();
  var resetEmail = "";
  var resetKeyPin = "";

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
      showShortToast(Msg: AppLocalizations.of(context)!.enteremail);
    } else if (passwordController.value.text.isEmpty) {
      showShortToast(Msg: AppLocalizations.of(context)!.enterpassword);
    } else {
      showLoader();
      var result = await _userAuthenticationRepository.callLogin(email: emailController.text, password: passwordController.text);
      hideLoader();
      if (result is AuthModel) {
        if (result.status == "success") {
          await Get.put(UserinfoController()).setUserDataByModel(userInfo: result.user ?? User());
          Get.offNamed(RoutesName.mainScreen);
        }
      } else if (result is Failure) {
        showShortToast(Msg: result.errorResponse.toString());
      }
    }
  }

  forgetPassword(context) async {
    FocusScope.of(context).unfocus();
    if (forgetPassEmailController.value.text.isEmpty) {
      showShortToast(Msg: AppLocalizations.of(context)!.enteremail);
    } else {
      showLoader();
      var result = await _userAuthenticationRepository.callForgetPassword(
        email: forgetPassEmailController.value.text,
      );
      hideLoader();
      if (result is ForgetPasswordModel) {
        if (result.status == "success") {
          resetEmail = forgetPassEmailController.value.text;
          resetKeyPin = result.key.toString();
          showResetPassDialog();
        }
      } else if (result is Failure) {
        showShortToast(Msg: result.errorResponse.toString());
      }
    }
  }

  resetPassword(context) async {
    FocusScope.of(context).unfocus();
    if (resetPasswordController.value.text.isEmpty) {
      showShortToast(Msg: AppLocalizations.of(context)!.enteremail);
    } else if (resetConfirmPasswordController.value.text.isEmpty) {
      showShortToast(Msg: AppLocalizations.of(context)!.enterconfirmpassword);
    } else if (resetPasswordController.value.text != resetConfirmPasswordController.value.text) {
      showShortToast(Msg: AppLocalizations.of(context)!.passwordnotmatch);
    } else if (resetKeyPin != resetPinController.value.text) {
      showShortToast(Msg: AppLocalizations.of(context)!.pinincorrect);
    } else {
      showLoader();
      var result = await _userAuthenticationRepository.callResetPassword(
        email: resetEmail,
        password: resetPasswordController.value.text,
        key: resetKeyPin,
      );
      hideLoader();
      if (result is ForgetPasswordModel) {
        if (result.status == "success") {
          showShortToast(Msg: result.message.toString());
          if (Get.isDialogOpen ?? false) {
            Get.back();
          }
        }
      } else if (result is Failure) {
        showShortToast(Msg: result.errorResponse.toString());
      }
    }
  }

  showForgetPassDialog() {
    FocusManager.instance.primaryFocus?.unfocus();
    return Get.dialog(
            Dialog(
              backgroundColor: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const TextTitleLarge(
                        text: "Forget Password",
                        color: Colors.black,
                        textAlign: TextAlign.start,
                        size: 2,
                      ),
                      const Gap(10),
                      const Text(
                        "It's often forgotten that password things. Enter your email address below and click on the 'Request Password Reset' button. We"
                        " will contact you shortly!",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: FontsConstants.yantramanav,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Gap(20),
                      TextFieldRegular(
                        hintText: "Email",
                        iconPath: Assets.imagesEmail,
                        textInputType: TextInputType.emailAddress,
                        textController: forgetPassEmailController,
                      ),
                      const Gap(30),
                      ElevatedButton(
                        onPressed: () async {
                          await forgetPassword(Get.context as BuildContext);
                        },
                        child: const TextBodySmall(
                          text: "REQUEST PASSWORD RESET",
                          color: Colors.white,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }

  showResetPassDialog() {
    FocusManager.instance.primaryFocus?.unfocus();
    return Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const TextTitleLarge(
                  text: "Reset Password",
                  color: Colors.black,
                  textAlign: TextAlign.start,
                  size: 2,
                ),
                const Gap(10),
                const Text(
                  "Enter PIN that we have sent you in your registered Email address.",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: FontsConstants.yantramanav,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(20),
                TextFieldRegular(
                  hintText: "Enter PIN",
                  iconPath: Assets.imagesEmail,
                  textInputType: TextInputType.text,
                  isIcon: false,
                  textController: resetPinController,
                ),
                const Gap(20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Now you can enter new Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: FontsConstants.yantramanav,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const Gap(20),
                TextFieldRegular(
                  hintText: "Enter New Password",
                  iconPath: Assets.imagesLock,
                  textInputType: TextInputType.visiblePassword,
                  secureText: true,
                  textController: resetPasswordController,
                ),
                const Gap(20),
                TextFieldRegular(
                  hintText: "Confirm New Password",
                  iconPath: Assets.imagesLock,
                  textInputType: TextInputType.visiblePassword,
                  secureText: true,
                  textController: resetConfirmPasswordController,
                ),
                const Gap(20),
                ElevatedButton(
                  onPressed: () async {
                    await resetPassword(Get.context as BuildContext);
                  },
                  child: const TextBodySmall(
                    text: "SET NEW PASSWORD",
                    color: Colors.white,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
