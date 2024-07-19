import 'package:shared_preferences/shared_preferences.dart';

class AppPreference {
  static final AppPreference instance = AppPreference._internal();

  factory AppPreference() {
    return instance;
  }

  AppPreference._internal();

  final String _primaryColor = "primaryColor";
  final String _secondaryColor = "secondaryColor";
  final String _deviceToken = "deviceToken";
  final String _firstOpen = "firstOpen";

  //userInfo
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

  var prefs;

  //First Open
  setFirstOpen(bool s) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setBool(_firstOpen, s);
  }

  getFirstOpen() async {
    prefs = await SharedPreferences.getInstance();
    bool value = prefs.getBool(_firstOpen) ?? false;
    return value;
  }

  //Primary Color
  setPrimaryColor(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_primaryColor, s);
  }

  getPrimaryColor() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_primaryColor) ?? "#4C7CF0";
    return stringValue;
  }

  //secondary Color
  setSecondaryColor(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_secondaryColor, s);
  }

  getSecondaryColor() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_secondaryColor) ?? "#FFFFFF";
    return stringValue;
  }

  //user DeviceToken
  setDeviceToken(String? s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_deviceToken, s ?? "");
  }

  getDeviceToken() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_deviceToken) ?? "";
    return stringValue;
  }

  //=============================================================================================

  //userId
  setUserId(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userId, s);
  }

  getUserId() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_userId) ?? "";
    return stringValue;
  }

  //userName
  setUserName(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userName, s);
  }

  getUserName() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_userName) ?? "";
    return stringValue;
  }

  //niceName
  setNiceName(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_niceName, s);
  }

  getNiceName() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_niceName) ?? "";
    return stringValue;
  }

  //Email
  setEmail(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_email, s);
  }

  getEmail() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_email) ?? "";
    return stringValue;
  }

  //URL
  setUrl(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_url, s);
  }

  getUrl() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_url) ?? "";
    return stringValue;
  }

  //RegisteredDate
  setRegisteredDate(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_registeredDate, s);
  }

  getRegisteredDate() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_registeredDate) ?? "";
    return stringValue;
  }

  //Description
  setDescription(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_description, s);
  }

  getDescription() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_description) ?? "";
    return stringValue;
  }

  //Capabilities
  setCapabilities(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_capabilities, s);
  }

  getCapabilities() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_capabilities) ?? "";
    return stringValue;
  }

  //Display Name
  setDisplayName(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_displayName, s);
  }

  getDisplayName() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_displayName) ?? "";
    return stringValue;
  }

  //First Name
  setFirstname(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_firstname, s);
  }

  getFirstname() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_firstname) ?? "";
    return stringValue;
  }

  //Lastname
  setLastname(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_lastname, s);
  }

  getLastname() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_lastname) ?? "";
    return stringValue;
  }

  //nickName
  setNickName(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_nickname, s);
  }

  getNickName() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_nickname) ?? "";
    return stringValue;
  }

  //Mobile
  setMobile(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_mobile, s);
  }

  getMobile() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_mobile) ?? "";
    return stringValue;
  }

  //Gender
  setGender(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_gender, s);
  }

  getGender() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_gender) ?? "";
    return stringValue;
  }

  //Dob
  setDob(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_dob, s);
  }

  getDob() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_dob) ?? "";
    return stringValue;
  }

  //UserImage
  setUserImage(String s) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString(_pgsUserImage, s);
  }

  getUserImage() async {
    prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(_pgsUserImage) ?? "";
    return stringValue;
  }

  clearPreference() async {
    prefs = await SharedPreferences.getInstance();
    await prefs.remove(_deviceToken);
  }
}
