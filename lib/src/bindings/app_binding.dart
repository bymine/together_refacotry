import 'package:get/get.dart';
import 'package:together_refacotry/src/controllers/app_controller.dart';
<<<<<<< Updated upstream
=======

import 'package:together_refacotry/src/controllers/home_controller.dart';

>>>>>>> Stashed changes
import 'package:together_refacotry/src/controllers/calendar_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
<<<<<<< Updated upstream
=======
    Get.put(HomeController());
>>>>>>> Stashed changes
    Get.put(CalendarController());
  }
}
