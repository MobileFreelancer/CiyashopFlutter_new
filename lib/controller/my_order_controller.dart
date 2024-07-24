import 'package:ciyashopflutter/model/my_order_list_model.dart';
import 'package:ciyashopflutter/repository/api_helper/api_status.dart';
import 'package:ciyashopflutter/repository/order_repository.dart';
import 'package:ciyashopflutter/utils/utils.dart';
import 'package:get/get.dart';

class MyOrderController extends GetxController {
  final OrderRepositoryImpl _orderRepository = OrderRepositoryImpl();
  var orderList = [].obs;


  @override
  Future<void> onInit() async {
    super.onInit();
    await Future.delayed(const Duration(seconds: 1));
    await orderListApi();
  }

  orderListApi() async {
    // showLoader();
    var result = await _orderRepository.orderList();
    // hideLoader();
    if (result is MyOrderListModel) {
      print(result);
      // if (result.status == "success") {
      //   orderList.assignAll(result);
      // }
    } else if (result is Failure) {
      showShortToast(Msg: result.errorResponse.toString());
    }
  }
}
