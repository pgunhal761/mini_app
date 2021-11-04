// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

import 'package:flutter/material.dart';

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
    );
    // ); 
     }
}
