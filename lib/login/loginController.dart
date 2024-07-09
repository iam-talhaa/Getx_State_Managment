import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart';

class Logincontroller extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;
  RxBool loading = false.obs;

  Login() async {
    try {
      final Response = await post(Uri.parse("https://reqres.in/api/login"),
          body: {
            'email': emailController.value.text,
            'password': passwordcontroller.value.text
          });
      final data = jsonDecode(Response.body);

      if (Response.statusCode == 200) {
        Get.snackbar('Login SuccessFul', "Congratulation");
      } else {
        Get.snackbar('Login Failed', "Try Again");
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString());
    }
  }
}
