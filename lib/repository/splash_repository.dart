import 'package:ciyashopflutter/model/home_layout_model.dart';
import 'package:ciyashopflutter/repository/api_helper/api_constant.dart';
import 'package:ciyashopflutter/repository/api_helper/api_services.dart';
import 'package:ciyashopflutter/repository/api_helper/api_status.dart';
import 'package:ciyashopflutter/utils/constant.dart';

import '../utils/Apis.dart';


abstract class SplashRepository {
  getHomeLayout();
  getProductDetail();
}

class SplashRepositoryImpl extends SplashRepository {
  @override
  getHomeLayout() async {
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
      return homeLayoutModelFromJson(response.response.toString());
    } else if (response is Failure) {
      return response;
    }
  }

  @override
  getProductDetail() {}
}
