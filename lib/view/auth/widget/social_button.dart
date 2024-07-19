import 'dart:io';

import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_button.dart';
import 'package:ciyashopflutter/controller/sign_in_controller.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SocialButton extends StatelessWidget {
  SocialButton({super.key});

  final SignInController controller = Get.find<SignInController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ImageButtonWhite(
                onTap: () {
                  // ref.read(signInVMProvider).loginWithFacebook(context);
                },
                images: Assets.imagesFbIcon,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ImageButtonWhite(
                onTap: () {
                  controller.loginWithGoogle(context);
                },
                images: Assets.imagesGoogle,
              ),
            ),
          ),
          Platform.isIOS
              ? Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      onTap: () {
                        controller.loginWithApple(context);
                      },
                      child: Container(
                        height: double.infinity,
                        decoration: cardViewBox(),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(Assets.imagesApple),
                        ),
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
