import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemangment/imageController.dart';

class Image_picker extends StatefulWidget {
  const Image_picker({super.key});

  @override
  State<Image_picker> createState() => _Image_pickerState();
}

class _Image_pickerState extends State<Image_picker> {
  ImageController controller = Get.put(ImageController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                    minRadius: 100,
                    maxRadius: 100,
                    backgroundImage: controller.imagepath.isNotEmpty
                        ? FileImage(File(controller.imagepath.toString()))
                        : null),
              ),
              TextButton(
                  onPressed: () {
                    controller.pickImage();
                  },
                  child: Text('PICK Image'))
            ],
          );
        })
      ],
    );
  }
}
