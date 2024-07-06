import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GetX  State Managment',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 228, 141, 41),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 6),
                      child: Card(
                        child: ListTile(
                          //  tileColor: Color.fromARGB(255, 105, 249, 223),
                          style: ListTileStyle.drawer,
                          title: Text('TALHA'),
                          subtitle: Text('Flutter Developer'),
                          leading: Icon(Icons.person),
                          onLongPress: () {
                            Get.bottomSheet(Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              child: Column(
                                children: [
                                  ListTile(
                                    onTap: () {
                                      Get.changeTheme(ThemeData.light());
                                    },
                                    title: Text("LIGHT THEME"),
                                    leading: Icon(Icons.light_mode_sharp),
                                  ),
                                  ListTile(
                                    tileColor: Colors.pink,
                                    onTap: () {
                                      Get.changeTheme(ThemeData.dark());
                                    },
                                    title: Text("Black THEME"),
                                    leading: Icon(Icons.dark_mode),
                                  ),
                                ],
                              ),
                            ));
                          },
                          onTap: () {
                            Get.defaultDialog(
                                title: 'DELETE',
                                middleText: "Are You Sure To Delete This ?",
                                onCancel: () {
                                  Text('Cancel');
                                  Get.back();
                                },
                                onConfirm: () {
                                  Text('Delete');
                                });
                          },
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.send),
          onPressed: () {
            Get.snackbar('Whats App', "4 Unread msg",
                backgroundColor: Color.fromARGB(255, 121, 198, 33),
                colorText: Colors.white,
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ));
          }),
    );
  }
}
