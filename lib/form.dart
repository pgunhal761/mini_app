// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:multi_select_flutter/multi_select_flutter.dart';

class FormList extends StatefulWidget {
  final String eventCode;
//constructor
  const FormList({Key? key, required this.eventCode}) : super(key: key);

  State<FormList> createState() => _FormList( eventCode: this.eventCode);

}
//TODO finished w/ input using buttons, need to add some text and photo
//TODO questions saved to phone...add to form
//TODO need to push to firebase

class _FormList extends State<FormList> {
  //final List<TeamData> data;
  final String eventCode;
  final myController = TextEditingController();

  void dispose() {
    myController.dispose();
    super.dispose();
  }
   // ignore: unused_element
   _FormList({Key? key, required this.eventCode});
  //required this.data

  @override
  Widget build(BuildContext context) {
      List<Attribute>? _selectedAttribute = [

      ];
     List<Attribute> _attribute = [
    Attribute(id: 1, name: "Navigation"),
    Attribute(id: 2, name: "Height"),
    Attribute(id: 3, name: "Power"),
    Attribute(id: 4, name: "Speed"),
    Attribute(id: 5, name: "Efficiecy"),
    ];

    List<ProgrammingLanguage> _languages = [
      ProgrammingLanguage(id: 1, name: "Java"),
      ProgrammingLanguage(id: 2, name: "C"),
      ProgrammingLanguage(id: 3, name: "C++"),
      ProgrammingLanguage(id: 4, name: "Python"),
      ProgrammingLanguage(id: 5, name: "Other"),
      
    ];

  final _items = _attribute
      .map((attribute) => MultiSelectItem<Attribute>(attribute, attribute.name))
      .toList();

  final _itemsLanguages = _languages
      .map((languages) => MultiSelectItem<ProgrammingLanguage>(languages, languages.name))
      .toList();


    return Scaffold(
      appBar: AppBar(
        title: Text('Team ' + eventCode),
        backgroundColor: Colors.green,
      ),
      body: (
        Padding(
         padding: const EdgeInsets.all(30.0),
          child: ListView(
          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Drivebase motors? List count + type (Ex: 2 NEO 550, 2 BAG)",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                letterSpacing: 1.0,
                wordSpacing: 1.0,
                
              )
            ),
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              )
            ),
            SizedBox(height: 20), //added as padding
            Text(
              "Select some of the team's strengths. ",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                letterSpacing: 1.0,
                wordSpacing: 0.5,   
              )
            ),
            SizedBox(height: 20),
            MultiSelectDialogField(
              items: _items,
              listType: MultiSelectListType.CHIP,
              onConfirm: (values) {
                //add stuff here i guess
                //not working
                // _selectedAttribute = values.cast<Attribute>();
              },
            ), 
            SizedBox(height: 20),
            Text(
              "What is their main programming language?",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                letterSpacing: 1.0,
                wordSpacing: 1.0,   
              )
            ),
            MultiSelectDialogField(
              items: _itemsLanguages,
              //icon = Icon(Icons.check),
              // onTap(values) {
              //   //do stuff here
              // }
              listType: MultiSelectListType.CHIP,
              onConfirm: (values) {
                //add stuff here i guess
                //not working
                // _selectedAttribute = values.cast<Attribute>();
              },
            ), 
            SizedBox(height: 20),
            Text(
              "Anything cool about their robot you noticed? What are they proud of?",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                letterSpacing: 1.0,
                wordSpacing: 1.0,
                
              )

            ),
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              )
            ),
            SizedBox(height: 20),
             Text(
              "Describe their autonomous routine.",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                letterSpacing: 1.0,
                wordSpacing: 1.0,
                
              )

            ),
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              )
            ),
            SizedBox(height: 20),
             Text(
              "How many batteries are in their pit?",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                letterSpacing: 1.0,
                wordSpacing: 1.0,
                
              )

            ),
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              )
            ),
            SizedBox(height: 20),
            Text(
              "How many batteries can they charge at once?",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                letterSpacing: 1.0,
                wordSpacing: 1.0,
                
              )

            ),
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              )
            ),
            SizedBox(height: 20),
             Text(
              "Any cool new tools they are using?",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                letterSpacing: 1.0,
                wordSpacing: 1.0,
                
              )
            //TODO pics of tools
            ),
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              )
            ),
            SizedBox(height: 20),
             Text(
              "What type of storage do they use? What are its pros and cons (think convenience to transport, organization, etc.)",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                letterSpacing: 1.0,
                wordSpacing: 1.0,
                
              )

            ),
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              )
            ),
            SizedBox(height: 20),
            //TODO pics of storage
             Text(
              "Does their pit look asthetically pleasing? Why or why not?",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                letterSpacing: 1.0,
                wordSpacing: 1.0,
                
              )

            ),
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              )
            ),
            SizedBox(height: 20),
             Text(
              "Final comments",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                letterSpacing: 1.0,
                wordSpacing: 1.0,
                
              )

            ),
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              )
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: (
                ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20))
              ),
               onPressed: () { 
                
               },
              child: const Text('Submit Form')
            )
          ],
        )
      )),
    );
    // ); 
     }
}


class Attribute {
  final int id;
  final String name;

  Attribute({
    required this.id,
    required this.name,
  });
}



class ProgrammingLanguage {
  final int id;
  final String name;

  ProgrammingLanguage({
    required this.id,
    required this.name,
  });
}