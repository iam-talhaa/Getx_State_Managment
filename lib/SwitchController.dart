import 'package:get/get.dart';

class Switchcontroller extends GetxController {
  RxBool S_value = false.obs;

  S_controller(value) {
    S_value.value = value;
  }
}
