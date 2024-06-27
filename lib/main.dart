// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
   
    title: "Green Office",
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Green Office",
          style: TextStyle(color: Colors.white),
        ),
        actions: [],
        backgroundColor: Color.fromARGB(255, 71, 71, 71),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
        ),
      ),
      body: Column(
        
      ),
      
    ),
    debugShowCheckedModeBanner: false,

  );
  runApp(app);
}
// body:  Container(
      //       color: Colors.black,
      //       child: Row(
      //         children: <Widget>[
      //           Expanded(
      //             child: Text('Demo', style: TextStyle(color: Colors.white),),
      //           )
      //         ],
      //       ),
      //     ),