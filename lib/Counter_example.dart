// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_statemangment/Counter_controller.dart';

// class CounterExample extends StatefulWidget {
//   const CounterExample({super.key});

//   @override
//   State<CounterExample> createState() => _CounterExampleState();
// }

// class _CounterExampleState extends State<CounterExample> {
//   final CounterController controller = Get.put(CounterController());

//   @override
//   Widget build(BuildContext context) {
//     print("testing");
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Count via Getx  '),
//         centerTitle: true,
//       ),
//       floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {
//             controller.IncreamentCounter();
//           }),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Center(
//             child: Obx(
//               () => Text(
//                 '${controller.mycounter.toDouble()}',
//                 style: TextStyle(fontSize: 50),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
