import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/model/profile_model.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  var isNotificationEnabled = false.obs;
  var profileList = [
    ProfileModel(name: 'Login', logo: Assets.imagesLocks),
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
  ];
}
