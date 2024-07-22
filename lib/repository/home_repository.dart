import 'package:ciyashopflutter/model/home_model.dart' as home;
import 'package:ciyashopflutter/repository/api_helper/api_constant.dart';
import 'package:ciyashopflutter/repository/api_helper/api_services.dart';
import 'package:ciyashopflutter/repository/api_helper/api_status.dart';
import 'package:ciyashopflutter/utils/constant.dart';

import '../utils/Apis.dart';

abstract class HomeRepository {
  getHome();
}

class HomeRepositoryImpl extends HomeRepository {
  @override
  getHome() async {
    var params = {
      APIConstant.instance.appVer: Apis.version,
      APIConstant.instance.purchaseCode: Apis.purchasekey,
    };
    var response = await ApiServices.instance.postAPICall(
      param: params,
      url: APIConstant.instance.homeLayoutApi,
      paramType: ParamType.raw,
    );
    if (response is Success) {
      return home.homeModelFromJson(response.response.toString());
    } else if (response is Failure) {
      return response;
    }
  }
}
