import 'package:ciyashopflutter/repository/api_helper/api_constant.dart';
import 'package:ciyashopflutter/repository/api_helper/api_services.dart';
import 'package:ciyashopflutter/repository/api_helper/api_status.dart';
import 'package:ciyashopflutter/model/my_order_list_model.dart' as my_order;

abstract class OrderRepository {
  orderList();
}

class OrderRepositoryImpl extends OrderRepository {
  @override
  orderList() async {
    var params = {
      APIConstant.instance.page: 1,
      APIConstant.instance.customer: 4,
    };

    var response = await ApiServices.instance.postAPICall(
      param: params,
      url: APIConstant.instance.ordersApi,
      paramType: ParamType.raw,
    );

    if (response is Success) {
      return my_order.myOrderListModelFromJson(response.response.toString());
    } else if (response is Failure) {
      return response;
    }
  }
}