import 'package:get/get.dart';
import 'package:together_refacotry/src/controllers/app_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}
