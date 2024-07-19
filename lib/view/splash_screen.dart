import 'package:ciyashopflutter/controller/splash_controller.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "\u00a9 Copyright ${DateTime.now().year} Electronics. All rights reserved.",
                style: TextStyle(
                  color: ColorConstant.whiteColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Image.asset(Assets.imagesLogo),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
