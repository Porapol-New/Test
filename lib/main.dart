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
        ),leading:Image.asset("assets/logog.png",width: 30,height: 20,),
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   tooltip: 'Menu Icon',
        //   color: Colors.white,
        //   onPressed: () {},
        // ),
        backgroundColor: Color.fromARGB(255, 71, 71, 71),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: [Row(children: [Expanded(
                  child:Row(children: [Image.asset('assets/greenoffice.jpg'),],)
                  //  Padding(padding: EdgeInsets.only(left: 10,right: 10)),
             
                  // Image.network(
                  //   "https://www.groovygreen.com/wp-content/uploads/2017/07/green-office.jpg",
                  //   loadingBuilder: (context, child, Progress) {
                  //     return Progress == null
                  //         ? child
                  //         : LinearProgressIndicator(
                  //             backgroundColor: Colors.black,
                  //           );
                  //   },
                  // ),
                
              ),],)
              
              
            
          
        ],
      )),
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