import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_app_bar.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBarWidgetWithBack(title: "About Us", isBack: true),
      body: Stack(
        children: [
          appBarBackground(),
          Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      margin: const EdgeInsets.only(top: 100, right: 20, left: 20, bottom: 20),
                      decoration: cardViewBox(),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(20),
                            Container(
                              width: double.infinity,
                              height: 20.h,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                Assets.imagesTestImage2,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            const Gap(20),
                            const TextTitleLarge(
                              text: "Introduction",
                              color: Colors.black,
                            ),
                            const TextBodySmall(
                              text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                              color: Colors.black,
                              maxLine: 10,
                            ),
                            const Gap(20),
                            const TextTitleLarge(
                              text: "Value Proposition",
                              color: Colors.black,
                            ),
                            const TextBodySmall(
                              text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                              color: Colors.black,
                              maxLine: 10,
                            ),
                            const Gap(20),
                            const TextTitleLarge(
                              text: "Brand",
                              color: Colors.black,
                            ),
                            const TextBodySmall(
                              text: "Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                              color: Colors.black,
                              maxLine: 10,
                            ),
                            const Gap(20),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      margin: const EdgeInsets.only(right: 20, left: 20,bottom: 20),
                      decoration: cardViewBox(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Gap(10),
                          SizedBox(
                            width: 100,
                            child: Image.asset(
                              Assets.imagesAppBarLogo,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Gap(20),
                          const Align(
                            alignment: Alignment.center,
                            child: TextTitleLarge(
                              text: "Follow Us",
                              color: Colors.black,
                            ),
                          ),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(bottom: 20),
                                decoration: cardViewBox(),
                                child: const ImageIcon(
                                  AssetImage(Assets.imagesFbOuter),
                                  size: 15,
                                ),
                              ),
                              const Gap(10),
                              Container(
                                width: 30,
                                height: 30,
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(bottom: 20),
                                decoration: cardViewBox(),
                                child: const ImageIcon(
                                  AssetImage(Assets.imagesTwitterOuter),
                                  size: 15,
                                ),
                              ),
                              const Gap(10),
                              Container(
                                width: 30,
                                height: 30,
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(bottom: 20),
                                decoration: cardViewBox(),
                                child: const ImageIcon(
                                  AssetImage(Assets.imagesWhatsappOuter),
                                  size: 15,
                                ),
                              ),
                              const Gap(10),
                              Container(
                                width: 30,
                                height: 30,
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(bottom: 20),
                                decoration: cardViewBox(),
                                child: const ImageIcon(
                                  AssetImage(Assets.imagesInstaOuter),
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                          const TextBodySmall(
                            text: "Copyright 2023 Electronics. All rights reserved.",
                            color: Colors.black,
                            textAlign: TextAlign.center,
                            maxLine: 3,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
