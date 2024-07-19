import 'dart:convert';
HomeLayoutModel homeLayoutModelFromJson(String str) => HomeLayoutModel.fromJson(json.decode(str));
String homeLayoutModelToJson(HomeLayoutModel data) => json.encode(data.toJson());
class HomeLayoutModel {
  HomeLayoutModel({
      this.homeLayout, 
      this.isGuestCheckoutActive, 
      this.isLogin, 
      this.isSlider, 
      this.isRtl, 
      this.siteLanguage, 
      this.isTerawalletActive, 
      this.isUserExists,});

  HomeLayoutModel.fromJson(dynamic json) {
    homeLayout = json['home_layout'];
    isGuestCheckoutActive = json['is_guest_checkout_active'];
    isLogin = json['is_login'];
    isSlider = json['is_slider'];
    isRtl = json['is_rtl'];
    siteLanguage = json['site_language'];
    isTerawalletActive = json['is_terawallet_active'];
    isUserExists = json['is_user_exists'];
  }
  String? homeLayout;
  bool? isGuestCheckoutActive;
  bool? isLogin;
  bool? isSlider;
  bool? isRtl;
  String? siteLanguage;
  bool? isTerawalletActive;
  String? isUserExists;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['home_layout'] = homeLayout;
    map['is_guest_checkout_active'] = isGuestCheckoutActive;
    map['is_login'] = isLogin;
    map['is_slider'] = isSlider;
    map['is_rtl'] = isRtl;
    map['site_language'] = siteLanguage;
    map['is_terawallet_active'] = isTerawalletActive;
    map['is_user_exists'] = isUserExists;
    return map;
  }

}