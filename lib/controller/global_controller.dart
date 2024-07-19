import 'package:ciyashopflutter/controller/network_controller.dart';
import 'package:get/get.dart';

class GlobalController implements Bindings {
  @override
  void dependencies() {
    Get.put(NetworkController(), permanent: true);
  }
}
