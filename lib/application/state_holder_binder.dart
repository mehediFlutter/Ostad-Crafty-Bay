import 'package:crafty_bay/application/presentation/state_holder/bottom_nav_controller.dart';
import 'package:get/get.dart';

class StateHolderBinder extends Bindings{
  @override
  void dependencies() {
  Get.put(BottomNavController());
  }
}