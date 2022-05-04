import 'package:get/get.dart';
import 'package:together_refacotry/src/pages/views/home_page.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  RxInt currentIndex = 0.obs;
  RxList<Project> fixProject = [
    Project(
        title: "프로젝트 테스트 1",
        notes: "프로젝트 테스트 소개글 ",
        imageUrl: "assets/images/project_background_1.png"),
    Project(
        title: "프로젝트 테스트 2",
        notes: "프로젝트 테스트2 소개글 ",
        imageUrl: "assets/images/project_background_2.png"),
    Project(
        title: "프로젝트 테스트 3",
        notes: "프로젝트 테스트3 소개글 ",
        imageUrl: "assets/images/project_background_3.png"),
  ].obs;

  Project get currentProject => fixProject[currentIndex.value];

  void changeIndex(int index) {
    currentIndex(index);
  }
}
