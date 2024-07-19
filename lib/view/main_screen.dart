import 'dart:io';

import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/controller/main_controller.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final MainController controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.lightColor,
      extendBodyBehindAppBar: true,
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: Container(
        height: Platform.isIOS ? 70 : 60,
        decoration: const BoxDecoration(color: Colors.transparent),
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 60,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: ColorConstant.primaryColor,
                      boxShadow: myShadow(),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            controller.selectPage(pageNumber: 0);
                          },
                          child: const SizedBox(
                            width: 55,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Gap(5),
                                ImageIcon(
                                  AssetImage(Assets.imagesCategory),
                                  color: Colors.white,
                                  size: 22,
                                ),
                                Gap(5),
                                TextBodySmall(
                                  text: "Categories",
                                  size: -4,
                                  color: ColorConstant.textWhite,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            controller.selectPage(pageNumber: 1);
                          },
                          child: const SizedBox(
                            width: 55,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Gap(5),
                                ImageIcon(
                                  AssetImage(Assets.imagesCartBottom),
                                  color: Colors.white,
                                  size: 22,
                                ),
                                Gap(5),
                                TextBodySmall(
                                  text: "Cart",
                                  size: -4,
                                  color: ColorConstant.textWhite,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Gap(40),
                        InkWell(
                          onTap: () {
                            controller.selectPage(pageNumber: 3);
                          },
                          child: const SizedBox(
                            width: 55,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Gap(5),
                                ImageIcon(
                                  AssetImage(Assets.imagesHeart),
                                  color: Colors.white,
                                  size: 22,
                                ),
                                Gap(5),
                                TextBodySmall(
                                  text: "Wishlist",
                                  size: -4,
                                  color: ColorConstant.textWhite,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            controller.selectPage(pageNumber: 4);
                          },
                          child: const SizedBox(
                            width: 55,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Gap(5),
                                ImageIcon(
                                  AssetImage(Assets.imagesUser),
                                  color: Colors.white,
                                  size: 22,
                                ),
                                Gap(5),
                                TextBodySmall(
                                  text: "Profile",
                                  size: -4,
                                  color: ColorConstant.textWhite,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: FloatingActionButton(
                        elevation: 0,
                        onPressed: () {
                          controller.selectPage(pageNumber: 2);
                        },
                        backgroundColor: ColorConstant.lightColor,
                        foregroundColor: ColorConstant.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(
                            width: 15,
                            color: ColorConstant.primaryColor,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        child: const ImageIcon(
                          AssetImage(Assets.imagesHome),
                          size: 25,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            if (Platform.isIOS)
              Container(
                color: ColorConstant.primaryColor,
                height: 10,
              )
          ],
        ),
      ),
      body: Obx(
        () => IndexedStack(
          index: controller.currentPage.value,
          children: controller.pages,
        ),
      ),
    );
  }

  bodyWithAnimation() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeOut,
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: SizedBox.expand(
        key: ValueKey<int>(controller.currentPage.value),
        child: controller.getSelectedPage(),
      ),
    );
  }
}
