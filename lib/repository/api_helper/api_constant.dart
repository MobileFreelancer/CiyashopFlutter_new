import 'package:ciyashopflutter/utils/Apis.dart';
import 'package:ciyashopflutter/utils/constant.dart';

class APIConstant {

  static final APIConstant _instance = APIConstant._internal();
  factory APIConstant() {
    return _instance;
  }
  APIConstant._internal();
  static APIConstant get instance => _instance;
  
  //API-END POINT
  final String homeLayoutApi = "${Apis.MAIN_URL}home_layout";
  final String addNotificationApi = "${Apis.MAIN_URL}add_notifications";
  final String getProductApi = "${Apis.MAIN_URL}products";
  final String signInApi = "${Apis.MAIN_URL}login";
  final String socialSignInApi = "${Apis.MAIN_URL}social_login";
  final String forgotPasswordApi = "${Apis.MAIN_URL}forgot_password";
  final String updatePasswordApi = "${Apis.MAIN_URL}update_password";
  final String customerApi = "${Apis.MAIN_URL}customer";
  final String notificationStatusApi = "${Apis.MAIN_URL}notifications_status";
  final String updateUserImageApi = "${Apis.MAIN_URL}update_user_image";
  final String infoPagesApi = "${Apis.MAIN_URL}info_pages";

  //API_REQUEST PARAM
  final String appVer = "app-ver";
  final String purchaseCode = "purchase_code";
  final String email = "email";
  final String password = "password";
  final String deviceType = "device_type";
  final String deviceToken = "deviceToken";
  final String userName = "username";
  final String mobile = "mobile";
  final String userId = "user_id";

}

//Error
const TIMEOUT_REQUEST = 408;
const USER_INVALIED_RESPONSE = 100;
const No_INTERNET = 101;
const INVALIED_FORMAT = 102;
const UNKNOWN_ERROR = 103;
