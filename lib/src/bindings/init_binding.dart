import 'package:get/get.dart';
import 'package:together_refacotry/src/controllers/auth_controller.dart';

class InitBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}
