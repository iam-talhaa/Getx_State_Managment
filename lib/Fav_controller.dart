import 'package:get/get.dart';

class FavController extends GetxController {
  RxList<String> carName = [
    'Toyota',
    'BMW',
    'Audi',
    // 'Honda',
    // 'Kia',
  ].obs;

  RxList carlist = [].obs;

  Addedcar(String value) {
    carlist.add(value);
  }

  Removecar(String value) {
    carlist.remove(value);
  }
}
