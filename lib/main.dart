import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemangment/changeTheme.dart';
import 'package:getx_statemangment/homescree.dart';
import 'package:getx_statemangment/silani.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackExample(),
    );
  }
}
