import 'package:flutter/material.dart';


class _ViewData extends StatelessWidget {
  // final List<TeamData> data;
  // final String eventCode;
  // const _ViewData({Key? key, required this.data, required this.eventCode})
  //     : super(key: key);

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
        title: Text("hello"),
        backgroundColor: Colors.green,
      ),
    );
  }
}