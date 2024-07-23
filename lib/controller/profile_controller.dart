import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/component/custom_text_field.dart';
import 'package:ciyashopflutter/controller/user_info_controller.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/model/forget_password_model.dart';
import 'package:ciyashopflutter/model/profile_model.dart';
import 'package:ciyashopflutter/repository/user_authentication_repository.dart';
import 'package:ciyashopflutter/utils/app_preferences.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/size_constant.dart';
import 'package:ciyashopflutter/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  var isNotificationEnabled = false.obs;

  final UserAuthenticationRepositoryImpl _userAuthenticationRepository = UserAuthenticationRepositoryImpl();
  var profileList = [
    Get.find<UserinfoController>().isLogin.value
        ? ProfileModel(name: 'Logout', logo: Assets.imagesLocks)
        : ProfileModel(name: 'Login', logo: Assets.imagesLocks),
    ProfileModel(name: 'My Orders', logo: Assets.imagesShoppingCart),
    ProfileModel(name: 'My Address', logo: Assets.imagesAddress),
    ProfileModel(name: 'My Coupons', logo: Assets.imagesCoupons),
    ProfileModel(name: 'Choose Language', logo: Assets.imagesLanguage),
    ProfileModel(name: 'Choose Currency', logo: Assets.imagesCurrency),
    ProfileModel(name: 'My Points', logo: Assets.imagesPoints),
    ProfileModel(name: 'About Us', logo: Assets.imagesInformation),
    ProfileModel(name: 'Account Setting', logo: Assets.imagesSetting),
    ProfileModel(name: 'Notification', logo: Assets.imagesNotificationBell),
    ProfileModel(name: 'Contact Us', logo: Assets.imagesContacts),
    ProfileModel(name: 'Rate the App', logo: Assets.imagesStars),
    ProfileModel(name: 'Clear History', logo: Assets.imagesHistory),
    ProfileModel(name: 'Shop', logo: Assets.imagesShop),
    ProfileModel(name: 'Stores', logo: Assets.imagesStore),
  ].obs;

  logoutUser() async {
    showLoader();
    var result = await _userAuthenticationRepository.logout();
    hideLoader();
    if (result is ForgetPasswordModel) {
      profileList.first.name = "Login";
      profileList.refresh();
      await AppPreference.instance.clearPreference();
      showShortToast(Msg: result.message.toString());
    }
  }


  showLogoutDialog(){
    return Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const TextTitleLarge(
                text: "Logout",
                color: Colors.black,
                textAlign: TextAlign.start,
                size: 2,
              ),
              const Gap(10),
              const Text(
                "Do you really want to sign out from your account?",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: FontsConstants.yantramanav,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(30),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(ColorConstant.negativeColor),
                      ),
                      onPressed: () async {
                        if (Get.isDialogOpen ?? false) {
                          Get.back();
                        }
                        await Future.delayed(const Duration(seconds: 1));
                        await logoutUser();
                      },
                      child: const TextBodySmall(
                        text: "Yes",
                        color: Colors.white,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const Gap(20),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        if (Get.isDialogOpen ?? false) {
                          Get.back();
                        }
                      },
                      child: const TextBodySmall(
                        text: "No",
                        color: Colors.white,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
