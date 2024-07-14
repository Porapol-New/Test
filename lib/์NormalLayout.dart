import 'package:flutter/material.dart';

class NormalLayout extends StatelessWidget {
  const NormalLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20.0),
      children: [
        Column(
          children: [
            Text(
              "Green Office",
              style: TextStyle(fontSize: 40),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 20),
            Text(
              "สำนักงานสีเขียว หมายถึงแนวคิดและแนวทางการจัดการสำนักงานให้เป็นมิตรต่อสิ่งแวดล้อม โดยมีการใช้ทรัพยากรและพลังงานอย่างมีประสิทธิภาพ ลดผลกระทบต่อสิ่งแวดล้อม และส่งเสริมสุขภาพและความเป็นอยู่ที่ดีของพนักงานในองค์กร แนวคิด ,Green Office มีเป้าหมายในการสร้างสำนักงานที่ยั่งยืนในทุกด้าน และมีการดำเนินการที่เป็นระบบเพื่อให้เกิดการเปลี่ยนแปลงที่ยั่งยืน ตัวอย่างของแนวทางการจัดการ ",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200, // กำหนดความกว้างที่คงที่
              height: 200, // กำหนดความสูงที่คงที่
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                child: Image.asset(
                  'assets/greenoffice.jpg',
                  fit: BoxFit.cover, // ให้รูปปรับขนาดและครอบคลุมพื้นที่
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
