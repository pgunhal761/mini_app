
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class FormList extends StatefulWidget {
  final String eventCode;
//constructor
  const FormList({Key? key, required this.eventCode}) : super(key: key);

  State<FormList> createState() => _FormList( eventCode: this.eventCode);

}

class _FormList extends State<FormList> {
  //final List<TeamData> data;
  final String eventCode;
  // final myController = TextEditingController();
  int val = -1; 
  // bool _value = false;

  // void dispose() {
  //   myController.dispose();
  //   super.dispose();
  // }
   // ignore: unused_element
   _FormList({Key? key, required this.eventCode});
  //required this.data

  @override
  Widget build(BuildContext context) {

    BallCapability? _ball;
    ClimbCapability? _climb = ClimbCapability.low;
    Endgame? _action = Endgame.park;

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

        List<ShootingCapability> _shooting = [
      ShootingCapability(id: 1, name: "Lower Port"),
      ShootingCapability(id: 2, name: "Upper Port"),
    ];

    List<TextEditingController> myController =
      List.generate(10, (i) => TextEditingController());

  final _items = _attribute
      .map((attribute) => MultiSelectItem<Attribute>(attribute, attribute.name))
      .toList();

  final _itemsLanguages = _languages
      .map((languages) => MultiSelectItem<ProgrammingLanguage>(languages, languages.name))
      .toList();

  final _itemsShooting = _shooting
      .map((shooting) => MultiSelectItem<ShootingCapability>(shooting, shooting.name))
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
              "Robot Questions",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                letterSpacing: 1.0,
                wordSpacing: 1.0,
              )
            ),
            SizedBox(height:25),
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
            MultiSelectDialogField(
              items: _items,
              listType: MultiSelectListType.CHIP,
              onConfirm: (values) {
                //add stuff here i guess
                //not working
                // _selectedAttribute = values.cast<Attribute>();
              },
            ), 
            SizedBox(height: 20), //padding
            Text(
              "What are their main programming languages?",
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
              }, initialValue: [],
            ), 


//TODO ADD photo for pic of robot here
//add radio box for drivebase type


             SizedBox(height: 20), //padding
            Text(
              "Shooting Capability (select all that apply)",
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
              items: _itemsShooting,
              //icon = Icon(Icons.check),
              // onTap(values) {
              //   //do stuff here
              // }
              listType: MultiSelectListType.CHIP,
              onConfirm: (values) {
                //add stuff here i guess
                //not working
                // _selectedAttribute = values.cast<Attribute>();
              }, initialValue: [],
            ), 
            SizedBox(height: 20),
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
              controller: myController[0],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              )
            ),
            SizedBox(height:20),
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
              controller: myController[1],
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
              controller: myController[2],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              )
            ),
          SizedBox(height: 20),
           Text(
              "How many balls can the robot hold?",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                letterSpacing: 1.0,
                wordSpacing: 1.0,   
              )
            ),
            //TODO not able to select a value
           ListTile(
             title: const Text('1'),
             leading: Radio<BallCapability>(
               value: BallCapability.one,
               groupValue: _ball,
                toggleable: true,
                onChanged: (BallCapability? value) {
              setState(() {
                _ball = value;
              });
            },
             )
           ),
           ListTile(
             title: const Text('2'),
             leading: Radio<BallCapability>(
               value: BallCapability.two,
               groupValue: _ball, 
               toggleable: true, 
                onChanged: (BallCapability? value) {
              setState(() {
                _ball = value;
              });
            },
             )
           ),
           ListTile(
             title: const Text('3'),
             leading: Radio<BallCapability>(
               value: BallCapability.three,
               groupValue: _ball, 
               toggleable: true,
                onChanged: (BallCapability? value) {
              setState(() {
                _ball = value;
              });
            },
             )
           ),
           ListTile(
             title: const Text('4'),
             leading: Radio<BallCapability>(
               value: BallCapability.four,
               groupValue: _ball, 
               toggleable: true,
                onChanged: (BallCapability? value) {
              setState(() {
                _ball = value;
              });
            },
             )
           ),
           ListTile(
             title: const Text('5'),
             leading: Radio<BallCapability>(
               value: BallCapability.five,
               groupValue: _ball, 
               toggleable: true,
                onChanged: (BallCapability? value) {
              setState(() {
                _ball = value;
              });
            },
             )
           ),
           ListTile(
             title: const Text('More than five'),
             leading: Radio<BallCapability>(
               value: BallCapability.more,
               groupValue: _ball, 
               toggleable: true,
                onChanged: (BallCapability? value) {
              setState(() {
                _ball = value;
              });
            },
             )
           ),
          SizedBox(height: 20),
           Text(
              "What is their endgame capacity?",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                letterSpacing: 1.0,
                wordSpacing: 1.0,   
              )
            ),
           ListTile(
             title: const Text('Park'),
             leading: Radio<Endgame>(
               value: Endgame.park,
               groupValue: _action,
                onChanged: (Endgame? value) {
              setState(() {
                _action = value;
              });
            },
             )
           ),

            ListTile(
             title: const Text('Climb'),
             leading: Radio<Endgame>(
               value: Endgame.climb,
               groupValue: _action,
                onChanged: (Endgame? value) {
              setState(() {
                _action = value;
              });
            },
             )
           ),
           ListTile(
             title: const Text('Level'),
             leading: Radio<Endgame>(
               value: Endgame.level,
               groupValue: _action,
                onChanged: (Endgame? value) {
              setState(() {
                _action = value;
              });
            },
             )
           ),
          SizedBox(height: 20),
          Text(
              "What is their climb capacity?",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                letterSpacing: 1.0,
                wordSpacing: 1.0,   
              )
            ),
           ListTile(
             title: const Text('Low Rung'),
             leading: Radio<ClimbCapability>(
               value: ClimbCapability.low,
               groupValue: _climb,
                onChanged: (ClimbCapability? value) {
              setState(() {
                _climb = value;
              });
            },
             )
           ),

            ListTile(
             title: const Text('Middle Rung'),
             leading: Radio<ClimbCapability>(
               value: ClimbCapability.middle,
               groupValue: _climb,
                onChanged: (ClimbCapability? value) {
              setState(() {
                _climb = value;
              });
            },
             )
           ),
            ListTile(
             title: const Text('High Rung'),
             leading: Radio<ClimbCapability>(
               value: ClimbCapability.high,
               groupValue: _climb,
                onChanged: (ClimbCapability? value) {
              setState(() {
                _climb = value;
              });
            },
             )
           ),
           ListTile(
             title: const Text('No preference'),
             leading: Radio<ClimbCapability>(
               value: ClimbCapability.none,
               groupValue: _climb,
                onChanged: (ClimbCapability? value) {
              setState(() {
                _climb = value;
              });
            },
             )
           ),

            Text(
              "Final Comments about Robot",
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
              controller: myController[3],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              )
            ),
            SizedBox(height: 20),

//maybe additional robot pictures

//page break?





             Text(
              "Pit Questions",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                letterSpacing: 1.0,
                wordSpacing: 1.0,
              )
            ),
            
             Text(
              "For improving out pit in the future!",
              textAlign: TextAlign.justify,
             // textScaleFactor: 2.0,
              style: TextStyle (
                fontWeight: FontWeight.w200,
                fontSize: 13.0,
                letterSpacing: 1.0,
                wordSpacing: 1.0,
              )
            ),

            SizedBox(height:25),
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
              controller: myController[4],
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
              controller: myController[5],
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
            ),
            TextField(
              controller: myController[6],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              )
            ),
            SizedBox(height: 20),

            //TODO pics of tools


            
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
              controller: myController[7],
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
              controller: myController[8],
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
              controller: myController[9],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              )
            ),
            SizedBox(height: 20),

            //TODO use to push to firebase
            ElevatedButton(
              style: (
                ElevatedButton.styleFrom(primary: Colors.green, textStyle: const TextStyle(fontSize: 20))
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



class ShootingCapability {
  final int id;
  final String name;

  ShootingCapability({
    required this.id,
    required this.name,
  });
}

enum BallCapability {one, two, three, four, five, more}
enum ClimbCapability {low, middle, high, none}
enum Endgame {park, climb, level}



//msdf:
/**
 * 1 team strengths
 * 2 main programming languages
 * 4 shooting capability
 */

//text: 
/**
 * 5 drivebase motors
 * 6 cool robot features
 * 7 auton routine
 * 11 final robot comments
 * 12 battery capacities
 * 13 battery charge capacity
 * 14 new tools
 * 16 storage pros and cons
 * 17 pit asthetically pleasing?
 * 18 final comments
 */

//radio box
/**
 * 8 ball capacity
 * 9 endgame capacity
 * 10 climb capacity
 */

/**
 * photo:
 * 3 pic of robot
 * (11.5 additional robot pics)
 * 15 pics of tools
 */