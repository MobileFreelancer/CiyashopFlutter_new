import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_rich_text.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/component/custom_text_field.dart';
import 'package:ciyashopflutter/controller/sign_up_controller.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/extension.dart';
import 'package:ciyashopflutter/utils/routers.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteColor,
      body: Stack(
        children: [
          appBarBackground(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 170, right: 20, left: 20, bottom: 50),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: cardViewBox(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Gap(30),
                  TextHeadlineSmall(
                    text: AppLocalizations.of(context)!.signup.toUpperCase(),
                  ),
                  const Gap(30),
                  TextFieldRegular(
                    hintText: AppLocalizations.of(context)!.name.toCapitalize(),
                    iconPath: Assets.imagesUser,
                    textInputType: TextInputType.name,
                  ),
                  const Gap(30),
                  TextFieldRegular(
                    hintText: AppLocalizations.of(context)!.email.toCapitalize(),
                    iconPath: Assets.imagesEmail,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const Gap(30),
                  TextFieldCountry(
                    hintText: AppLocalizations.of(context)!.phonenumber.toCapitalize(),
                    iconPath: Assets.imagesPhone,
                    textInputType: TextInputType.phone,
                    onClick: () {
                      showCountryPicker(
                        useSafeArea: true,
                        context: context,
                        onSelect: (value) {},
                      );
                    },
                  ),
                  const Gap(30),
                  TextFieldRegular(
                    hintText: AppLocalizations.of(context)!.password.toCapitalize(),
                    iconPath: Assets.imagesLock,
                    textInputType: TextInputType.visiblePassword,
                    secureText: true,
                  ),
                  const Gap(30),
                  TextFieldRegular(
                    hintText: AppLocalizations.of(context)!.confirmpassword.toCapitalize(),
                    iconPath: Assets.imagesLock,
                    textInputType: TextInputType.visiblePassword,
                    secureText: true,
                  ),
                  const Gap(30),
                  ElevatedButton(
                    onPressed: () {
                      Get.offNamed(RoutesName.mainScreen);
                    },
                    child: Text(AppLocalizations.of(context)!.signup.toCapitalize().toUpperCase()),
                  ),
                  const Gap(30),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Divider(
                        endIndent: 1,
                        thickness: 2,
                        color: ColorConstant.textBody.withOpacity(0.2),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        color: Colors.white,
                        child: TextTitleMedium(
                          text: "Or".toUpperCase(),
                        ),
                      )
                    ],
                  ),
                  const Gap(30),
                  CustomRichText(
                    normalText: "Don't have an Account? ",
                    linkedText: "Sign In",
                    onClick: () {
                      Get.offNamed(RoutesName.signInScreen);
                    },
                  ),
                  const Gap(40),
                ],
              ),
            ),
          ),
          Container(
            height: 120,
            color: ColorConstant.primaryColor,
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 60),
                child: ImageIcon(
                  const AssetImage(Assets.imagesLogo),
                  color: ColorConstant.whiteColor,
                  size: 150,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
