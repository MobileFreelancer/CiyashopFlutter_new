import 'package:ciyashopflutter/model/customer_model.dart';
import 'package:ciyashopflutter/model/home_layout_model.dart';
import 'package:ciyashopflutter/repository/api_helper/api_constant.dart';
import 'package:ciyashopflutter/repository/api_helper/api_services.dart';
import 'package:ciyashopflutter/repository/api_helper/api_status.dart';
import 'package:ciyashopflutter/utils/Apis.dart';

abstract class ProfileRepository {
  getCustomerDetails();

  getNotificationStatus();

  getInfoPages();

  getUserStatus();
}

class ProfileRepositoryImpl extends ProfileRepository {

  @override
  getCustomerDetails() async {
    var params = {APIConstant.instance.userId: "4"};

    try {
      var response = await ApiServices.instance.postAPICall(
        param: params,
        url: APIConstant.instance.customerApi,
        paramType: ParamType.raw,
      );
      if (response is Success) {
        if (response.response != null) {
          return customerModelFromJson(response.response.toString());
        } else {
          print("Response is empty");
          return null; // or throw an exception
        }
      } else if (response is Failure) {
        print("Response Error: ${response.errorResponse}");
        return null; // or throw an exception
      } else {
        print("Unknown response type");
        return null; // or throw an exception
      }
    } catch (e) {
      print("Error: $e");
      return null; // or throw an exception
    }
  }

  @override
  getNotificationStatus() async {
    try {
      var params = {APIConstant.instance.userId: "4"};

      var response = await ApiServices.instance.postAPICall(
        param: params,
        url: APIConstant.instance.notificationStatusApi,
        paramType: ParamType.raw,
      );
      if (response is Success) {
        if (response.response != null) {
          return customerModelFromJson(response.response.toString());
        } else {
          print("Response is empty");
          return null; // or throw an exception
        }
      } else if (response is Failure) {
        print("Response Error: ${response.errorResponse}");
        return null; // or throw an exception
      } else {
        print("Unknown response type");
        return null; // or throw an exception
      }
    } catch (e) {
      print("Error: $e");
      return null; // or throw an exception
    }
  }

  @override
  getUserStatus() {
    // TODO: implement getUserStatus
    throw UnimplementedError();
  }

  @override
  getInfoPages() async {
    try {
      var response = await ApiServices.instance.getAPICall(
        url: APIConstant.instance.notificationStatusApi, param: {},
      );
      if (response is Success) {
        if (response.response != null) {
          return customerModelFromJson(response.response.toString());
        } else {
          print("Response is empty");
          return null; // or throw an exception
        }
      } else if (response is Failure) {
        print("Response Error: ${response.errorResponse}");
        return null; // or throw an exception
      } else {
        print("Unknown response type");
        return null; // or throw an exception
      }
    } catch (e) {
      print("Error: $e");
      return null; // or throw an exception
    }
  }
}
