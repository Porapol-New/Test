// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Body.dart';
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
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //       //topLeft: Radius.circular(),
        //         bottomRight: Radius.circular(20),
        //       bottomLeft: Radius.circular(30)),
        // ),//actions: [IconButton(onPressed: (){}, icon: IconData  = IconData(0xee93, fontFamily: 'MaterialIcons')],
      ),
      body: SafeArea(
          child: ListView(children: [Mybody()
        // Row(
        //   // mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     // Padding(padding: EdgeInsets.all(30), ),
        //     // Expanded(
        //     //     child: Column(
        //     //   children: [
        //     //     Text("Green Office",
        //     //         style: TextStyle(fontSize: 50),
        //     //         overflow: TextOverflow.ellipsis),
        //     //     Text(
        //     //         "   สำนักงานสีเขียว หมายถึงแนวคิดและแนวทางการจัดการสำนักงานให้เป็นมิตรต่อสิ่งแวดล้อม โดยมีการใช้ทรัพยากรและพลังงานอย่างมีประสิทธิภาพ ลดผลกระทบต่อสิ่งแวดล้อม และส่งเสริมสุขภาพและความเป็นอยู่ที่ดีของพนักงานในองค์กร แนวคิด ,Green Office มีเป้าหมายในการสร้างสำนักงานที่ยั่งยืนในทุกด้าน และมีการดำเนินการที่เป็นระบบเพื่อให้เกิดการเปลี่ยนแปลงที่ยั่งยืน ตัวอย่างของแนวทางการจัดการ ",
        //     //         style: TextStyle(fontSize: 15),)
        //     //         //overflow: TextOverflow.fade)
        //     //   ],
        //     // )),
        //     // Expanded(
        //     //   // flex: 1,
        //     //   child: ClipRRect(
        //     //     borderRadius: BorderRadius.only(
        //     //         bottomLeft: Radius.circular(20),
        //     //         bottomRight: Radius.circular(20)),
        //     //     child: Image.asset('assets/greenoffice.jpg',),
        //     //   ),
        //     // ),
        //     // ),Padding(padding: EdgeInsets.all(10))
        //   ],
        // )
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