//import 'dart:html';

// ignore: unused_import
import 'dart:convert' as convert;

import 'package:flutter/material.dart';
// ignore: unused_import
import "_ViewData.dart";
// ignore: unused_import
import 'package:http/http.dart' as http;
import 'Practice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mustang Mini App', 
      theme: ThemeData.dark(),
      // home: Navigator(
      //   pages: [
      //     MaterialPage(child: MyHomePage(title: 'Mustang Mini App')),
      //     MaterialPage(child: ViewData(title: "Hello")),

      //   ],
      //   onPopPage: (route, result) {
      //     return route.didPop(result);
      //   }
      // )
      home: const MyHomePage(title: 'Mustang Mini App'),
      routes: <String, WidgetBuilder> {
        //'/a': (BuildContext context) => ViewData(title: 'Scouting Data', eventCode: 'helloWorld'),
      }


    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
//constructor
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  final myController = TextEditingController();

  void dispose() {
    myController.dispose();
    super.dispose();
  }


  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/logo.png', 
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Event code',
              )
            ),
            ElevatedButton(
              style: (
                ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20))
              ),
               onPressed: () { 
                // Navigator.pushNamed(context, '/a');
                 Navigator.push(
                   context, 
                   MaterialPageRoute(
                     // builder: (context) => ViewData(eventCode: myController.text),
                       builder: (context) => MyCustomForm(),
                   )
                );
             }, 
              child: const Text('Get Data')
            )
          ]
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // onTap: Navigator.push(
        //            context, 
        //            MaterialPageRoute(
        //               builder: (context) => ViewData(title: "hiThere", eventCode: myController.text),
        //            ),
        //            ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_line_chart),
            label: 'Pre Event Analysis',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.visibility),
            label: 'Scouting',
          ),
        ], 
      ),
    );
  }
}


// Future<Album> fetchAlbum() async {
//   http.Response response = await http.get(Uri.parse('https://www.thebluealliance.com/api/v3/teams/0'));

//  }
 