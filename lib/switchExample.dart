import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemangment/SwitchController.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  Switchcontroller mycontroller = Get.put(Switchcontroller());

  @override
  Widget build(BuildContext context) {
    print("Switch TEXTING");
    return Scaffold(
      appBar: AppBar(
          title: Text('Switch Example  Get X'),
          centerTitle: true,
          backgroundColor: Colors.blue[200]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notification'),
                  Switch(
                      value: mycontroller.S_value.value,
                      onChanged: (value) {
                        mycontroller.S_controller(value);
                      })
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
