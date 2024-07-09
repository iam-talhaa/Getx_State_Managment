import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemangment/login/loginController.dart';

class Login_Getx extends StatefulWidget {
  const Login_Getx({super.key});

  @override
  State<Login_Getx> createState() => _Login_GetxState();
}

class _Login_GetxState extends State<Login_Getx> {
  Logincontroller controller = Get.put(Logincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller.emailController.value,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.mail)),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: controller.passwordcontroller.value,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'password',
                    prefixIcon: Icon(Icons.password)),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  controller.Login();
                },
                child: Container(
                  child: Center(
                      child: Text(
                    'Login ',
                    style: TextStyle(fontSize: 20),
                  )),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                ),
              )
            ]),
      ),
    );
  }
}
