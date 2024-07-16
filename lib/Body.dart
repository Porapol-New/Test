// ignore_for_file: file_names

import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

class Mybody extends StatelessWidget {
  const Mybody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 1500,
              height: 500,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset('assets/GF2.png'),
              ),
            ),
            Container(
              width: 1600,
              height: 500,
              alignment: Alignment.center,
              child: Text(
                'Text Message',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0),
              ),
            )
          ],
        ),
      ],
    );
    // );
    // children: [Expanded(child:Container(color: Colors.red,width: double.infinity,height: 450,child: ClipRRect(
    //             borderRadius: BorderRadius.only(
    //                 bottomLeft: Radius.circular(20),
    //                 bottomRight: Radius.circular(20)),
    //             child: Image.asset('assets/greenoffice.jpg',),
    //           ),) )
    // ]
  }
}
