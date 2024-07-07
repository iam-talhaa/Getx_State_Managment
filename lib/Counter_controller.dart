import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt mycounter = 1.obs;

  void IncreamentCounter() {
    mycounter.value++;
  }
}
