// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Green Office",
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Green Office",
          style: TextStyle(color: Colors.white),
        ),
        leading: Image.asset(
          "assets/logog.png",
          width: 30,
          height: 20,
        ),
        backgroundColor: Color.fromARGB(255, 71, 71, 71),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
        ),
      ),
      body: SafeArea(
          child: ListView(children: [
        Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [Container(color: Colors.black,width: 300,height: 300,),Padding(padding: EdgeInsets.only(right: 100))],
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: Image.asset('assets/greenoffice.jpg'),
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
              ],
            )
          ],
        )
      ]
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [

              //   ],
              // )
              //   child: Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              // children: [
              //   Image.asset(
              //     'assets/greenoffice.jpg',
              //   ),
              //   Padding(
              //     padding: EdgeInsets.only(left: 10, right: 10),
              //   ),
              // ],

              )),
    ),
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
         // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   tooltip: 'Menu Icon',
        //   color: Colors.white,
        //   onPressed: () {},
        // ),