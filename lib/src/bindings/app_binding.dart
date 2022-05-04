import 'package:get/get.dart';
import 'package:together_refacotry/src/controllers/app_controller.dart';
import 'package:together_refacotry/src/controllers/home_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
    Get.put(HomeController());
  }
}
