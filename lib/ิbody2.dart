import 'package:flutter/material.dart';

class Body2 extends StatelessWidget {
  const Body2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 0)),
        Expanded(
          flex: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              'assets/greenoffice.jpg',
              opacity: const AlwaysStoppedAnimation(.8),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(20)),
        Expanded(
            child: Column(
          children: const [
            Text(
              "การประหยัดพลังงาน",
              style: TextStyle(fontSize: 50),
            ),
            Text(
              "  ใช้อุปกรณ์ไฟฟ้าที่มีประสิทธิภาพสูง ปรับการใช้แสงไฟ เครื่องใช้ไฟฟ้า และระบบทำความร้อน/เย็นให้มีประสิทธิภาพสูงสุด และปิดไฟและอุปกรณ์เมื่อไม่ได้ใช้งาน",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            )
            //overflow: TextOverflow.fade)
          ],
        )),
      ],
    );
  }
}
