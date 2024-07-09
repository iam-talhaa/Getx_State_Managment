import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  RxString imagepath = ''.obs;
  Future pickImage() async {
    final ImagePicker picker = ImagePicker();

    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagepath.value = image.path.toString();
    } else {}
  }
}
