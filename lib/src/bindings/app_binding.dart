import 'package:get/get.dart';
import 'package:together_refacotry/src/controllers/app_controller.dart';
<<<<<<< HEAD
import 'package:together_refacotry/src/controllers/home_controller.dart';
=======
import 'package:together_refacotry/src/controllers/calendar_controller.dart';
>>>>>>> schedule

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
<<<<<<< HEAD
    Get.put(HomeController());
=======
    Get.put(CalendarController());
>>>>>>> schedule
  }
}
