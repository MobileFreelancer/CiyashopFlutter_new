import 'package:ciyashopflutter/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final className = "HomeViewModel";
  var bannerImage = [].obs;
  var currentBanner = 0.obs;
  var bannerController = PageController().obs;
  var loadWidget = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 500), () {
      loadWidget.value = 1;
    });
  }

  fetchBannerList({required BuildContext context}) {
    bannerImage.assignAll([
      {
        "image": Assets.imagesTestImage,
      },
      {
        "image": Assets.imagesTestImage,
      },
      {
        "image": Assets.imagesTestImage,
      },
    ]);
  }
}
