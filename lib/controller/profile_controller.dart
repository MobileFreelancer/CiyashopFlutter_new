import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/model/customer_model.dart';
import 'package:ciyashopflutter/model/profile_model.dart';
import 'package:ciyashopflutter/repository/profile_repository.dart';
import 'package:ciyashopflutter/utils/app_preferences.dart';
import 'package:ciyashopflutter/utils/utils.dart';
import 'package:get/get.dart';

import '../repository/api_helper/api_status.dart';
import '../utils/config.dart';
import '../utils/constant.dart';

class ProfileController extends GetxController {
  var isNotificationEnabled = false.obs;
  final ProfileRepositoryImpl _profileRepository = ProfileRepositoryImpl();


  @override
  void onInit() {
    super.onInit();
    createProfileList();
    createwebviewpagesList();
  }



  getCustomerDetails() async {
    var result = await _profileRepository.getCustomerDetails();
    // if (result is CustomerModel) {
    //
    //   AppPreference.instance.setGuestCheckout(result.isGuestCheckoutActive ?? false);
    //   AppPreference.instance.setIsLogin(result.isLogin ?? false);
    //   AppPreference.instance.setIsSlider(result.isSlider ?? false);
    //   AppPreference.instance.setIsRtl(result.isRtl ?? false);
    //   AppPreference.instance.setSiteLanguage(result.siteLanguage ?? "en");
    //   AppPreference.instance.setWalletActive(result.isTerawalletActive ?? false);
    //   AppPreference.instance.setIsUserExists(result.isUserExists ?? "false");
    //
    //   await redirectToIntroSlider();
    // } else if (result is Failure) {
    //   showShortToast(Msg: result.errorResponse.toString());
    // }
  }





  // var profileList = [
  //   ProfileModel(name: 'Login', logo: Assets.imagesLocks),
  //   if (!Config.isCatalogModeOption)
  //     {
  //       ProfileModel(name: 'My Orders', logo: Assets.imagesShoppingCart),
  //     },
  //
  //   ProfileModel(name: 'My Coupons', logo: Assets.imagesCoupons),
  //   if (Constant.IS_WPML_ACTIVE)
  //     {
  //       ProfileModel(name: 'Choose Language', logo: Assets.imagesLanguage),
  //     },
  //   if (Constant.IS_CURRENCY_SWITCHER_ACTIVE)
  //     {
  //       ProfileModel(name: 'Choose Currency', logo: Assets.imagesCurrency),
  //     },
  //
  //   ProfileModel(name: 'My Points', logo: Assets.imagesPoints),
  //   ProfileModel(name: 'About Us', logo: Assets.imagesInformation),
  //   ProfileModel(name: 'Account Setting', logo: Assets.imagesSetting),
  //   ProfileModel(name: 'Notification', logo: Assets.imagesNotificationBell),
  //   ProfileModel(name: 'Contact Us', logo: Assets.imagesContacts),
  //   ProfileModel(name: 'Rate the App', logo: Assets.imagesStars),
  //   ProfileModel(name: 'Clear History', logo: Assets.imagesHistory),
  //   ProfileModel(name: 'Shop', logo: Assets.imagesShop),
  //   ProfileModel(name: 'Stores', logo: Assets.imagesStore),
  // ];

  RxList<ProfileModel> profileList = <ProfileModel>[].obs;
  RxList<ProfileModel> webViewPages = <ProfileModel>[].obs;


  void createProfileList() {
    profileList.clear();

    profileList.add(ProfileModel(name: 'Login', logo: Assets.imagesLocks));

    if (!Config.isCatalogModeOption) {
      profileList.add(ProfileModel(name: 'My Orders', logo: Assets.imagesShoppingCart));
    }

    profileList.add(ProfileModel(name: 'My Coupons', logo: Assets.imagesCoupons));

    if (Constant.IS_WPML_ACTIVE) {
      profileList.add(ProfileModel(name: 'Choose Language', logo: Assets.imagesLanguage));
    }

    if (Constant.IS_CURRENCY_SWITCHER_ACTIVE) {
      profileList.add(ProfileModel(name: 'Choose Currency', logo: Assets.imagesCurrency));
    }

    profileList.addAll([
      ProfileModel(name: 'My Points', logo: Assets.imagesPoints),
      ProfileModel(name: 'About Us', logo: Assets.imagesInformation),
      ProfileModel(name: 'Account Setting', logo: Assets.imagesSetting),
      ProfileModel(name: 'Notification', logo: Assets.imagesNotificationBell),
      ProfileModel(name: 'Contact Us', logo: Assets.imagesContacts),
      ProfileModel(name: 'Rate the App', logo: Assets.imagesStars),
      ProfileModel(name: 'Clear History', logo: Assets.imagesHistory),
    ]);
  }
  void createwebviewpagesList() {
    webViewPages.clear();

    webViewPages.add(ProfileModel(name: 'WebPage1', logo: null));

    webViewPages.add(ProfileModel(name: 'WebPage2', logo: null));

  }


}
