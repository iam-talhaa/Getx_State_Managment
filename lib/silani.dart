import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({super.key});

  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          fit: StackFit.loose,
          children: [
            Container(
              color: Color.fromARGB(255, 65, 184, 227),
              height: MediaQuery.of(context).size.height * 1,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
            ),
            Positioned(
              top: 60,
              child: Container(
                height: 40,
                decoration: BoxDecoration(color: Colors.red),
              ),
            )
          ],
        )
      ],
    ));
  }
}
