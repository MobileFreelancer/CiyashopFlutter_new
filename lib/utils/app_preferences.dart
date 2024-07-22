import 'package:shared_preferences/shared_preferences.dart';

class AppPreference {
  static final AppPreference instance = AppPreference._internal();

  factory AppPreference() {
    return instance;
  }

  AppPreference._internal();

  //Color
  final String _primaryColor = "primaryColor";
  final String _secondaryColor = "secondaryColor";
  final String _deviceToken = "deviceToken";
  final String _firstOpen = "firstOpen";

  //Config
  final String _isGuestCheckoutActive = "isGuestCheckoutActive";
  final String _isLogin = "isLogin";
  final String _isSlider = "isSlider";
  final String _isRtl = "isRtl";
  final String _siteLanguage = "siteLanguage";
  final String _walletActive = "walletActive";
  final String _isUserExists = "isUserExists";

  //user
  final String _userId = "userId";
  final String _userName = "userName";
  final String _niceName = "niceName";
  final String _email = "email";
  final String _url = "url";
  final String _registeredDate = "registeredDate";
  final String _displayName = "displayName";
  final String _firstname = "firstName";
  final String _lastname = "lastName";
  final String _nickname = "nickName";
  final String _description = "description";
  final String _capabilities = "capabilities";
  final String _mobile = "mobile";
  final String _gender = "gender";
  final String _dob = "dob";
  final String _pgsUserImage = "pgsUserImage";

  late Future<SharedPreferences> _prefs;

  Future<void> init() async {
    _prefs = SharedPreferences.getInstance();
  }

  Future<void> _setBool(String key, bool value) async {
    final prefs = await _prefs;
    await prefs.setBool(key, value);
  }

  Future<bool> _getBool(String key, {bool defaultValue = false}) async {
    final prefs = await _prefs;
    return prefs.getBool(key) ?? defaultValue;
  }

  Future<void> _setString(String key, String value) async {
    final prefs = await _prefs;
    await prefs.setString(key, value);
  }

  Future<String> _getString(String key, {String defaultValue = ""}) async {
    final prefs = await _prefs;
    return prefs.getString(key) ?? defaultValue;
  }

  // First Open
  Future<void> setFirstOpen(bool value) async => _setBool(_firstOpen, value);
  Future<bool> getFirstOpen() async => _getBool(_firstOpen);

  // Primary Color
  Future<void> setPrimaryColor(String value) async => _setString(_primaryColor, value);
  Future<String> getPrimaryColor() async => _getString(_primaryColor, defaultValue: "#4C7CF0");

  // Secondary Color
  Future<void> setSecondaryColor(String value) async => _setString(_secondaryColor, value);
  Future<String> getSecondaryColor() async => _getString(_secondaryColor, defaultValue: "#FFFFFF");

  // Device Token
  Future<void> setDeviceToken(String? value) async => _setString(_deviceToken, value ?? "");
  Future<String> getDeviceToken() async => _getString(_deviceToken);

  // Configuration
  Future<void> setGuestCheckout(bool value) async => _setBool(_isGuestCheckoutActive, value);
  Future<bool> getGuestCheckout() async => _getBool(_isGuestCheckoutActive);

  Future<void> setIsLogin(bool value) async => _setBool(_isLogin, value);
  Future<bool> getIsLogin() async => _getBool(_isLogin);

  Future<void> setIsSlider(bool value) async => _setBool(_isSlider, value);
  Future<bool> getIsSlider() async => _getBool(_isSlider);

  Future<void> setIsRtl(bool value) async => _setBool(_isRtl, value);
  Future<bool> getIsRtl() async => _getBool(_isRtl);

  Future<void> setSiteLanguage(String value) async => _setString(_siteLanguage, value);
  Future<String> getSiteLanguage() async => _getString(_siteLanguage);

  Future<void> setWalletActive(bool value) async => _setBool(_walletActive, value);
  Future<bool> getWalletActive() async => _getBool(_walletActive);

  Future<void> setIsUserExists(String value) async => _setString(_isUserExists, value);
  Future<String> getIsUserExists() async => _getString(_isUserExists);


  // User Info
  Future<void> setUserId(String value) async => _setString(_userId, value);
  Future<String> getUserId() async => _getString(_userId);

  Future<void> setUserName(String value) async => _setString(_userName, value);
  Future<String> getUserName() async => _getString(_userName);

  Future<void> setNiceName(String value) async => _setString(_niceName, value);
  Future<String> getNiceName() async => _getString(_niceName);

  Future<void> setEmail(String value) async => _setString(_email, value);
  Future<String> getEmail() async => _getString(_email);

  Future<void> setUrl(String value) async => _setString(_url, value);
  Future<String> getUrl() async => _getString(_url);

  Future<void> setRegisteredDate(String value) async => _setString(_registeredDate, value);
  Future<String> getRegisteredDate() async => _getString(_registeredDate);

  Future<void> setDescription(String value) async => _setString(_description, value);
  Future<String> getDescription() async => _getString(_description);

  Future<void> setCapabilities(String value) async => _setString(_capabilities, value);
  Future<String> getCapabilities() async => _getString(_capabilities);

  Future<void> setDisplayName(String value) async => _setString(_displayName, value);
  Future<String> getDisplayName() async => _getString(_displayName);

  Future<void> setFirstname(String value) async => _setString(_firstname, value);
  Future<String> getFirstname() async => _getString(_firstname);

  Future<void> setLastname(String value) async => _setString(_lastname, value);
  Future<String> getLastname() async => _getString(_lastname);

  Future<void> setNickName(String value) async => _setString(_nickname, value);
  Future<String> getNickName() async => _getString(_nickname);

  Future<void> setMobile(String value) async => _setString(_mobile, value);
  Future<String> getMobile() async => _getString(_mobile);

  Future<void> setGender(String value) async => _setString(_gender, value);
  Future<String> getGender() async => _getString(_gender);

  Future<void> setDob(String value) async => _setString(_dob, value);
  Future<String> getDob() async => _getString(_dob);

  Future<void> setUserImage(String value) async => _setString(_pgsUserImage, value);
  Future<String> getUserImage() async => _getString(_pgsUserImage);

  // Clear Preference
  Future<void> clearPreference() async {
    final prefs = await _prefs;
    await prefs.clear();
  }
}


  // // Example usage
  // await prefs.setFirstOpen(true);
  // bool isFirstOpen = await prefs.getFirstOpen();
  // print("First Open: $isFirstOpen");
  //
  // await prefs.setPrimaryColor("#FF5733");
  // String primaryColor = await prefs.getPrimaryColor();
  // print("Primary Color: $primaryColor");
