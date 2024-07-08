import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemangment/Counter_controller.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  final SliderController controller = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    print("BUILD TESTING");
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Slider Example'),
        backgroundColor: Colors.blue[200],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 27, 183)
                      .withOpacity(controller.myopacity.value),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Obx(() => Slider(
              value: controller.myopacity.value,
              onChanged: (value) {
                controller.MySlider(value);
              })),
        ],
      ),
    );
  }
}
