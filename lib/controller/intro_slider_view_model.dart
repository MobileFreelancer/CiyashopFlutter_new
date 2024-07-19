import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/app_preferences.dart';
import 'package:ciyashopflutter/utils/constant.dart';
import 'package:ciyashopflutter/utils/routers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
        {
          "title": AppLocalizations.of(context)!.title_intro_one,
          "image": Assets.imagesIntro1,
          "description": AppLocalizations.of(context)!.intro_one
        },
        {
          "title": AppLocalizations.of(context)!.title_intro_two,
          "image": Assets.imagesIntro2,
          "description": AppLocalizations.of(context)!.intro_two
        },
        {
          "title": AppLocalizations.of(context)!.title_intro_three,
          "image": Assets.imagesIntro3,
          "description": AppLocalizations.of(context)!.intro_three
        },
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
