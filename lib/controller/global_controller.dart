import 'package:ciyashopflutter/controller/network_controller.dart';
import 'package:ciyashopflutter/controller/user_info_controller.dart';
import 'package:get/get.dart';

class GlobalController implements Bindings {
  @override
  void dependencies() {
    Get.put(NetworkController(), permanent: true);
    Get.put(UserinfoController(), permanent: true);
  }
}
