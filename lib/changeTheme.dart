// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_statemangment/homescree.dart';

// class ChangeTheme extends StatefulWidget {
//   const ChangeTheme({super.key});

//   @override
//   State<ChangeTheme> createState() => _ChangeThemeState();
// }

// class _ChangeThemeState extends State<ChangeTheme> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Theme Changer',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.deepPurple,
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () {
//         Get.to(() => HomeScreen());
//       }),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Column(
//           children: [
//             Card(
//               child: ListTile(
//                 title: Text('TALHA'),
//                 subtitle: Text('Talha is a good boy'),
//                 leading: Icon(Icons.person),
//                 onLongPress: () {
//                   Get.bottomSheet(Container(
//                     decoration: BoxDecoration(
//                         color: Colors.deepPurple,
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(20),
//                             topRight: Radius.circular(20))),
//                     child: Column(
//                       children: [
//                         ListTile(
//                           onTap: () {
//                             Get.changeTheme(ThemeData.light());
//                           },
//                           title: Text("LIGHT THEME"),
//                           leading: Icon(Icons.light_mode_sharp),
//                         ),
//                         ListTile(
//                           tileColor: Colors.pink,
//                           onTap: () {
//                             Get.changeTheme(ThemeData.dark());
//                           },
//                           title: Text("Black THEME"),
//                           leading: Icon(Icons.dark_mode),
//                         ),
//                       ],
//                     ),
//                   ));
//                 },
//                 onTap: () {
//                   Get.defaultDialog(
//                       title: 'DELETE',
//                       middleText: "Are You Sure To Delete This ?",
//                       onCancel: () {
//                         Text('Cancel');
//                       },
//                       onConfirm: () {
//                         Text('Delete');
//                       });
//                 },
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 title: Text('TALHA'),
//                 subtitle: Text('Talha is a good boy'),
//                 leading: Icon(Icons.person),
//                 onLongPress: () {
//                   Get.bottomSheet(Container(
//                     decoration: BoxDecoration(
//                         color: Colors.deepPurple,
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(20),
//                             topRight: Radius.circular(20))),
//                     child: Column(
//                       children: [
//                         ListTile(
//                           onTap: () {
//                             Get.changeTheme(ThemeData.light());
//                           },
//                           title: Text("LIGHT THEME"),
//                           leading: Icon(Icons.light_mode_sharp),
//                         ),
//                         ListTile(
//                           tileColor: Colors.pink,
//                           onTap: () {
//                             Get.changeTheme(ThemeData.dark());
//                           },
//                           title: Text("Black THEME"),
//                           leading: Icon(Icons.dark_mode),
//                         ),
//                       ],
//                     ),
//                   ));
//                 },
//                 onTap: () {
//                   Get.defaultDialog(
//                       title: 'DELETE',
//                       middleText: "Are You Sure To Delete This ?",
//                       onCancel: () {
//                         Text('Cancel');
//                       },
//                       onConfirm: () {
//                         Text('Delete');
//                       });
//                 },
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 title: Text('TALHA'),
//                 subtitle: Text('Talha is a good boy'),
//                 leading: Icon(Icons.person),
//                 onLongPress: () {
//                   Get.bottomSheet(Container(
//                     decoration: BoxDecoration(
//                         color: Colors.deepPurple,
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(20),
//                             topRight: Radius.circular(20))),
//                     child: Column(
//                       children: [
//                         ListTile(
//                           onTap: () {
//                             Get.changeTheme(ThemeData.light());
//                           },
//                           title: Text("LIGHT THEME"),
//                           leading: Icon(Icons.light_mode_sharp),
//                         ),
//                         ListTile(
//                           tileColor: Colors.pink,
//                           onTap: () {
//                             Get.changeTheme(ThemeData.dark());
//                           },
//                           title: Text("Black THEME"),
//                           leading: Icon(Icons.dark_mode),
//                         ),
//                       ],
//                     ),
//                   ));
//                 },
//                 onTap: () {
//                   Get.defaultDialog(
//                       title: 'DELETE',
//                       middleText: "Are You Sure To Delete This ?",
//                       onCancel: () {
//                         Text('Cancel');
//                       },
//                       onConfirm: () {
//                         Text('Delete');
//                       });
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
