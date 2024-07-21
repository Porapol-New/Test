// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/%E0%B8%B4body.dart';
import 'package:flutter_application_1/%E0%B8%B4body2.dart';
import 'package:flutter_application_1/Body3.dart';
import 'FloatingButton.dart';

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
        ),
        body: SafeArea(
            child: ListView(
                children: [Body1(), Body2(), Body3(), Floatingbutton()]))),
  );

  runApp(app);
}
