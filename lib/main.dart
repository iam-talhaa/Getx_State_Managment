import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemangment/FavouriteExample.dart';
import 'package:getx_statemangment/Image_picker.dart';
import 'package:getx_statemangment/SliderExample.dart';
import 'package:getx_statemangment/login/Getx.dart';
import 'package:getx_statemangment/switchExample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login_Getx(),
    );
  }
}
