import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemangment/Fav_controller.dart';

class Fav_Example extends StatefulWidget {
  const Fav_Example({super.key});

  @override
  State<Fav_Example> createState() => _Fav_ExampleState();
}

class _Fav_ExampleState extends State<Fav_Example> {
  @override
  Widget build(BuildContext context) {
    FavController myfavController = Get.put(FavController());

    print('CAR TESTING');
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: myfavController.carName.length,
                  itemBuilder: (BuildContext Context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        onTap: () {
                          if (myfavController.carlist.contains(
                              myfavController.carName[index].toString())) {
                            myfavController.Removecar(
                                myfavController.carlist[index].toString());
                          } else {
                            myfavController.Addedcar(
                                myfavController.carlist[index].toString());
                          }
                        },
                        tileColor: Colors.blue[100],
                        leading: Icon(Icons.person),
                        title: Text(myfavController.carName[index].toString()),
                        trailing: Obx(() => Icon(
                              Icons.favorite,
                              color: myfavController.carlist.contains(
                                      myfavController.carName[index].toString())
                                  ? Colors.red
                                  : Colors.black,
                            )),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
