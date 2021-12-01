// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:multi_select_flutter/multi_select_flutter.dart';

class ViewData extends StatefulWidget {
  final String eventCode;
//constructor
  const ViewData({Key? key, required this.eventCode}) : super(key: key);

  State<ViewData> createState() => _ViewData( eventCode: this.eventCode);

}


class _ViewData extends State<ViewData> {
  //final List<TeamData> data;
  final String eventCode;
   // ignore: unused_element
   _ViewData({Key? key, required this.eventCode});
  //required this.data

  @override
  Widget build(BuildContext context) {
     List<Animal> _animals = [
    Animal(id: 1, name: "Lion"),
    Animal(id: 2, name: "Flamingo"),
    Animal(id: 3, name: "Hippo"),
    Animal(id: 4, name: "Horse"),
    Animal(id: 5, name: "Tiger"),
    Animal(id: 6, name: "Penguin"),
    Animal(id: 7, name: "Spider"),
    Animal(id: 8, name: "Snake"),
    Animal(id: 9, name: "Bear"),
    Animal(id: 10, name: "Beaver"),
    Animal(id: 11, name: "Cat"),
    Animal(id: 12, name: "Fish"),
    Animal(id: 13, name: "Rabbit"),
    Animal(id: 14, name: "Mouse"),
    Animal(id: 15, name: "Dog"),
    Animal(id: 16, name: "Zebra"),
    Animal(id: 17, name: "Cow"),
    Animal(id: 18, name: "Frog"),
    Animal(id: 19, name: "Blue Jay"),
    Animal(id: 20, name: "Moose"),
    Animal(id: 21, name: "Gecko"),
    Animal(id: 22, name: "Kangaroo"),
    Animal(id: 23, name: "Shark"),
    Animal(id: 24, name: "Crocodile"),
    Animal(id: 25, name: "Owl"),
    Animal(id: 26, name: "Dragonfly"),
    Animal(id: 27, name: "Dolphin"),
  ];
  final _items = _animals
      .map((animal) => MultiSelectItem<Animal>(animal, animal.name))
      .toList();



    return Scaffold(
      // appBar: AppBar(title: Text(eventCode)),
      // body: data.length > 0
      //     ? ListView.builder(
      //         itemBuilder: ((context, index) => OprDataCard(
      //               data: data[index],
      //             )),
      //         itemCount: data.length,
      //       )
      //     : Center(
      //         child: Text(
      //           'Event Code is invalid',
      //           style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      //         ),
      //       ),


      appBar: AppBar(
        title: Text('Team ' + eventCode),
        backgroundColor: Colors.green,
      ),
      body: (
        MultiSelectDialogField(
          items: _items,
          listType: MultiSelectListType.CHIP,
          onConfirm: (values) {

        },
      )
      ),
    );
    // ); 
     }
}


class Animal {
  final int id;
  final String name;

  Animal({
    required this.id,
    required this.name,
  });
}