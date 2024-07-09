import 'package:flutter/material.dart';

class Fav_Example extends StatefulWidget {
  const Fav_Example({super.key});

  @override
  State<Fav_Example> createState() => _Fav_ExampleState();
}

class _Fav_ExampleState extends State<Fav_Example> {
  bool myColor = false;

  List<String> carName = [
    'Toyota',
    'BMW',
    'Audi',
    'Honda',
    'Kia',
  ];
  List<String> carlist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: carName.length,
                  itemBuilder: (BuildContext Context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                          onTap: () {
                            if (carlist.contains(carName[index].toString())) {
                              carlist.remove(carName[index].toString());
                            } else {
                              carlist.add(carName[index].toString());
                            }
                            setState(() {});
                          },
                          tileColor: Colors.blue[100],
                          leading: Icon(Icons.person),
                          title: Text(carName[index].toString()),
                          trailing: Icon(
                            Icons.favorite,
                            color: carlist.contains(carName[index].toString())
                                ? Colors.red
                                : Colors.black,
                          )),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
