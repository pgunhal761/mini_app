//import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mustang Mini App', 
      theme: ThemeData.light(),
      home: const MyHomePage(title: 'Mustang Mini App')
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
int currentIndex = 0;




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
            // SizedBox(
            //   height: 20,
            // ),
            Image.asset(
              'assets/logo.png', 
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Event code',
              )
            ),
            ElevatedButton(
              style: (
                ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20))
              ),
              onPressed: () {}, 
              child: const Text('Get Data')
            )
          ]
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
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
        onTap: (int index) {
          currentIndex = index;
          print(currentIndex);
        }
      ),
    );
  }
}

