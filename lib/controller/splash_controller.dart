import 'dart:async';

import 'package:ciyashopflutter/model/home_layout_model.dart';
import 'package:ciyashopflutter/repository/api_helper/api_status.dart';
import 'package:ciyashopflutter/repository/splash_repository.dart';
import 'package:ciyashopflutter/utils/app_preferences.dart';
import 'package:ciyashopflutter/utils/constant.dart';
import 'package:ciyashopflutter/utils/routers.dart';
import 'package:ciyashopflutter/utils/utils.dart';
import 'package:get/get.dart';

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
      homeLayout = result.homeLayout ?? "";
      isGuestCheckoutActive = result.isGuestCheckoutActive ?? false;
      isLogin = result.isLogin ?? false;
      isSlider = result.isSlider ?? false;
      isRtl = result.isRtl ?? false;
      siteLanguage = result.siteLanguage ?? "en-US";
      walletActive = result.isTerawalletActive ?? false;
      isUserExists = result.isUserExists ?? "not_provided";
      await redirectToIntroSlider();
    } else if (result is Failure) {
      showToast(Msg: result.errorResponse.toString());
    }
  }

  redirectToIntroSlider() async {
    bool slider = await AppPreference.instance.getFirstOpen();
    isLoading.value = false;
    Timer(
      const Duration(seconds: 3),
      () {
        Get.offNamed(
          !isSlider
              ? isLogin
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
