import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/app_preferences.dart';
import 'package:ciyashopflutter/utils/constant.dart';
import 'package:ciyashopflutter/utils/routers.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class IntroSliderController extends GetxController {
  var listPage = [].obs;
  var currentPage = 0.obs;
  var pageController = PageController().obs;

  @override
  void onInit() {
    super.onInit();
    fetchIntroList();
  }

  fetchIntroList() {
    final context = Get.context!;
    listPage.assignAll(
      [
        {"title": "title intro one".tr, "image": Assets.imagesIntro1, "description": "intro one".tr},
        {"title": "title intro two".tr, "image": Assets.imagesIntro2, "description": "intro two".tr},
        {"title": "title intro three".tr, "image": Assets.imagesIntro3, "description": "intro three".tr},
      ],
    );
  }

  onPageChange({required int index}) {
    currentPage.value = index;
  }

  skipPage() {
    currentPage.value = listPage.length - 1;
  }

  nextPage() {
    pageController.value.nextPage(duration: duration, curve: Curves.ease);
  }

  onGetStarted(BuildContext context) async {
    await AppPreference.instance.setFirstOpen(true);
    if (isLogin) {
      Get.offNamed(RoutesName.signInScreen);
    } else {
      Get.offNamed(RoutesName.mainScreen);
    }
  }
}
