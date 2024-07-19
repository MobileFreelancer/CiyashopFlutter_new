import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_rich_text.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/component/custom_text_field.dart';
import 'package:ciyashopflutter/controller/network_controller.dart';
import 'package:ciyashopflutter/controller/sign_in_controller.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/extension.dart';
import 'package:ciyashopflutter/utils/routers.dart';
import 'package:ciyashopflutter/utils/validations.dart';
import 'package:ciyashopflutter/view/auth/widget/or_divider.dart';
import 'package:ciyashopflutter/view/auth/widget/social_button.dart';
import 'package:ciyashopflutter/view/auth/widget/top_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  final _loginKey = GlobalKey<FormState>();
  final SignInController controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.lightColor,
      body: Stack(
        children: [
          appBarBackground(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 170,
                right: 20,
                left: 20,
                bottom: 50,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: cardViewBox(),
              child: Form(
                key: _loginKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Gap(40),
                    TextHeadlineMedium(
                      text: AppLocalizations.of(context)!.signin.toCapitalize(),
                    ),
                    const Gap(40),
                    TextFieldRegular(
                      hintText: AppLocalizations.of(context)!.email.toCapitalize(),
                      iconPath: Assets.imagesEmail,
                      textInputType: TextInputType.emailAddress,
                      textController: controller.emailController,
                      validator: (value) {
                        return FormValidate.requiredField(value!, "Email is empty");
                      },
                    ),
                    const Gap(30),
                    TextFieldRegular(
                      hintText: AppLocalizations.of(context)!.password.toCapitalize(),
                      iconPath: Assets.imagesLock,
                      textInputType: TextInputType.visiblePassword,
                      textController: controller.passwordController,
                      validator: (value) {
                        return FormValidate.requiredField(value!, "Password is empty");
                      },
                      secureText: true,
                    ),
                    const Gap(10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {

                        },
                        child: TextLabelMedium(
                          text: AppLocalizations.of(context)!.forgotpassword.toCapitalize(),
                          color: ColorConstant.primaryColor,
                        ),
                      ),
                    ),
                    const Gap(10),
                    ElevatedButton(
                      onPressed: () {
                        if (_loginKey.currentState?.validate() ?? false) {
                          controller.userLogin(context);
                        }
                      },
                      child: Text(AppLocalizations.of(context)!.signin.toUpperCase().toUpperCase()),
                    ),
                    const Gap(30),
                    SocialButton(),
                    const Gap(30),
                    const OrDivider(),
                    const Gap(20),
                    CustomRichText(
                      normalText: "Don't have an Account?",
                      linkedText: "Sign Up",
                      onClick: () {
                        Get.find<NetworkController>().showDialog();
                        //Get.toNamed(RoutesName.signUpScreen);
                      },
                    ),
                    const Gap(40)
                  ],
                ),
              ),
            ),
          ),
          const TopLogo(),
        ],
      ),
    );
  }
}
