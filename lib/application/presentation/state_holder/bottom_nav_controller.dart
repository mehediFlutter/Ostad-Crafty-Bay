import 'package:get/get.dart';

class BottomNavController extends GetxController {
  int currentIndex = 0;

  changeIndex(int index) {
    currentIndex = index;
    update();
  }

  backToHome() {
    changeIndex(0);
  }
}
