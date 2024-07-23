import 'dart:async';

import 'package:ciyashopflutter/model/home_layout_model.dart';
import 'package:ciyashopflutter/repository/api_helper/api_status.dart';
import 'package:ciyashopflutter/repository/splash_repository.dart';
import 'package:ciyashopflutter/utils/app_preferences.dart';
import 'package:ciyashopflutter/utils/constant.dart';
import 'package:ciyashopflutter/utils/routers.dart';
import 'package:ciyashopflutter/utils/utils.dart';
import 'package:get/get.dart';

import '../utils/config.dart';

class SplashController extends GetxController {
  final SplashRepositoryImpl _splashRepository = SplashRepositoryImpl();
  var isLoading = false.obs;

  homeLayoutSetting() async {
    isLoading.value = true;
    await getHomeLayout();
    isLoading.value = false;
    // await redirectToIntroSlider();
  }

  getHomeLayout() async {
    var result = await _splashRepository.getHomeLayout();
    if (result is HomeLayoutModel) {

      AppPreference.instance.setGuestCheckout(result.isGuestCheckoutActive ?? false);
      AppPreference.instance.setIsLogin(result.isLogin ?? false);
      AppPreference.instance.setIsSlider(result.isSlider ?? false);
      AppPreference.instance.setIsRtl(result.isRtl ?? false);
      AppPreference.instance.setSiteLanguage(result.siteLanguage ?? "en");
      AppPreference.instance.setWalletActive(result.isTerawalletActive ?? false);
      AppPreference.instance.setIsUserExists(result.isUserExists ?? "false");

      await redirectToIntroSlider();
    } else if (result is Failure) {
      showShortToast(Msg: result.errorResponse.toString());
    }
  }

  redirectToIntroSlider() async {
    bool slider = await AppPreference.instance.getFirstOpen();
    isLoading.value = false;
    Timer(
      const Duration(seconds: 3),
      () async {
        Get.offNamed(
          !slider
              ? await AppPreference.instance.getIsLogin()
                  ? RoutesName.signInScreen
                  : RoutesName.mainScreen
              : RoutesName.introSliderScreen,
          preventDuplicates: true,
        );
      },
    );
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    await homeLayoutSetting();
  }
}
