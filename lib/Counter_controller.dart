import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

// class CounterController extends GetxController {
//   RxInt mycounter = 1.obs;

//   void IncreamentCounter() {
//     mycounter.value++;
//   }
// }

class SliderController extends GetxController {
  RxDouble myopacity = 0.1.obs;

  void MySlider(value) {
    myopacity.value = value;
  }
}

class Switchcontroller extends GetxController {
  RxBool S_value = false.obs;

  S_controller(value) {
    S_value.value = value;
  }
}
