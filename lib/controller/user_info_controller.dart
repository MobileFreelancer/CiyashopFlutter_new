import 'package:ciyashopflutter/model/auth_model.dart' as auth;
import 'package:ciyashopflutter/utils/app_preferences.dart';
import 'package:get/get.dart';

class UserinfoController extends GetxController {
  var userId = "".obs;
  var userName = "".obs;
  var niceName = "".obs;
  var email = "".obs;
  var url = "".obs;
  var registeredDate = "".obs;
  var displayName = "".obs;
  var firstName = "".obs;
  var lastName = "".obs;
  var nickName = "".obs;
  var description = "".obs;
  var capabilities = "".obs;
  var mobile = "".obs;
  var gender = "".obs;
  var dob = "".obs;
  var pgsUserImage = "".obs;

  setUserDataByModel({required auth.User userInfo}) async {
    AppPreference.instance.setUserId(userInfo.id.toString() ?? "");
    AppPreference.instance.setUserName(userInfo.username ?? "");
    AppPreference.instance.setNiceName(userInfo.nicename ?? "");
    AppPreference.instance.setEmail(userInfo.email ?? "");
    AppPreference.instance.setUrl(userInfo.url ?? "");
    AppPreference.instance.setRegisteredDate(userInfo.registered ?? "");
    AppPreference.instance.setDisplayName(userInfo.displayname ?? "");
    AppPreference.instance.setFirstname(userInfo.firstname ?? "");
    AppPreference.instance.setLastname(userInfo.lastname ?? "");
    AppPreference.instance.setNickName(userInfo.nickname ?? "");
    AppPreference.instance.setDescription(userInfo.description ?? "");
    AppPreference.instance.setCapabilities(userInfo.capabilities?.customer.toString() ?? "");
    AppPreference.instance.setMobile(userInfo.mobile ?? "");
    AppPreference.instance.setGender(userInfo.gender ?? "");
    AppPreference.instance.setDob(userInfo.dob ?? "");
    AppPreference.instance.setUserImage(userInfo.pgsUserImage ?? "");
    await setUserInfoFromLocal();
  }

  setUserInfoFromLocal() async {
    userId.value = await AppPreference.instance.getUserId();
    userName.value = await AppPreference.instance.getUserName();
    niceName.value = await AppPreference.instance.getNiceName();
    email.value = await AppPreference.instance.getEmail();
    url.value = await AppPreference.instance.getUrl();
    registeredDate.value = await AppPreference.instance.getRegisteredDate();
    displayName.value = await AppPreference.instance.getDisplayName();
    firstName.value = await AppPreference.instance.getFirstname();
    lastName.value = await AppPreference.instance.getLastname();
    nickName.value = await AppPreference.instance.getNiceName();
    description.value = await AppPreference.instance.getDescription();
    capabilities.value = await AppPreference.instance.getCapabilities();
    mobile.value = await AppPreference.instance.getMobile();
    gender.value = await AppPreference.instance.getGender();
    dob.value = await AppPreference.instance.getDob();
    pgsUserImage.value = await AppPreference.instance.getUserImage();
  }

  getUserDataByModel() {

  }
}
