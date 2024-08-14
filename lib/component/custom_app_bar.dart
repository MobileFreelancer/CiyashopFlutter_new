import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/view/search_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

customAppBarWidgetWithDrawer({required GlobalKey<ScaffoldState> drawerKey}) {
  return AppBar(
    leading: Builder(
      builder: (context) => IconButton(
        onPressed: () {
          drawerKey.currentState?.openDrawer();
        },
        icon: const ImageIcon(
          AssetImage(
            Assets.imagesMenu,
          ),
        ),
      ),
    ),
    title: Builder(
      builder: (context) => Image.asset(
        Assets.imagesAppBarLogo,
        height: 25,
      ),
    ),
    centerTitle: true,
    actions: [
      IconButton(
        padding: const EdgeInsets.only(right: 8, left: 10),
        constraints: const BoxConstraints(),
        onPressed: () {
          Get.to(() => SearchProductScreen());
        },
        icon: const ImageIcon(
          AssetImage(Assets.imagesSearch),
        ),
      ),
      IconButton(
        padding: const EdgeInsets.only(right: 20, left: 8),
        constraints: const BoxConstraints(),
        onPressed: () {},
        icon: const ImageIcon(
          AssetImage(Assets.imagesCart),
        ),
      ),
    ],
  );
}

customAppBarWidgetWithBack({String title = "Product detail", bool isBack = false}) {
  return AppBar(
    backgroundColor: ColorConstant.primaryColor,
    leading: isBack
        ? Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
              ),
            ),
          )
        : const SizedBox(),
    iconTheme: IconThemeData(color: ColorConstant.whiteColor),
    title: Builder(
      builder: (context) => TextHeadlineSmall(
        text: title,
        color: ColorConstant.secondaryColor,
      ),
    ),
    centerTitle: true,
  );
}

customAppBarWidgetWithBackAndEndIcon({String title = "Product detail", bool isBack = false}) {
  return AppBar(
    backgroundColor: ColorConstant.lightColor,
    leading: isBack
        ? Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            ),
          )
        : const SizedBox(),
    iconTheme: IconThemeData(color: ColorConstant.whiteColor),
    title: Builder(
      builder: (context) => TextHeadlineSmall(
        text: title,
        color: Colors.black,
      ),
    ),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          Icons.close,
          color: Colors.black,
        ),
      )
    ],
  );
}
