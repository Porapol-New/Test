import 'package:flutter/material.dart';

class Body1 extends StatelessWidget {
  const Body1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
                //flex: 3,
                child: SizedBox(
              width: 1600,
              height: 500,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0)),
                child: Image.asset(
                  'assets/GF3.jpg',
                  fit: BoxFit.fill,
                  opacity: const AlwaysStoppedAnimation(.3),
                ),
              ),
            )),
          ],
        ),
        Container(
          padding: EdgeInsets.all(60),
          width: double.infinity,
          height: 500,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Green Office",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              Text(
                "สำนักงานสีเขียว หมายถึงแนวคิดและแนวทางการจัดการสำนักงานให้เป็นมิตรต่อสิ่งแวดล้อม โดยมีการใช้ทรัพยากรและพลังงานอย่างมีประสิทธิภาพ ลดผลกระทบต่อสิ่งแวดล้อม และส่งเสริมสุขภาพและความเป็นอยู่ที่ดีของพนักงานในองค์กร แนวคิด ,Green Office มีเป้าหมายในการสร้างสำนักงานที่ยั่งยืนในทุกด้าน และมีการดำเนินการที่เป็นระบบเพื่อให้เกิดการเปลี่ยนแปลงที่ยั่งยืน ตัวอย่างของแนวทางการจัดการ",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              )
            ],
          ),
        )
        // Padding(padding: EdgeInsets.all(10)),
        // const Row(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Padding(padding: EdgeInsets.all(20)),
        //     Expanded(
        //         child: Column(
        //       children: [
        //         Text("Green Office",
        //             style: TextStyle(fontSize: 50),
        //             overflow: TextOverflow.ellipsis),
        //         Text(
        //           "   สำนักงานสีเขียว หมายถึงแนวคิดและแนวทางการจัดการสำนักงานให้เป็นมิตรต่อสิ่งแวดล้อม โดยมีการใช้ทรัพยากรและพลังงานอย่างมีประสิทธิภาพ ลดผลกระทบต่อสิ่งแวดล้อม และส่งเสริมสุขภาพและความเป็นอยู่ที่ดีของพนักงานในองค์กร แนวคิด ,Green Office มีเป้าหมายในการสร้างสำนักงานที่ยั่งยืนในทุกด้าน และมีการดำเนินการที่เป็นระบบเพื่อให้เกิดการเปลี่ยนแปลงที่ยั่งยืน ตัวอย่างของแนวทางการจัดการ ",
        //           style: TextStyle(fontSize: 15),
        //         )
        //         //overflow: TextOverflow.fade)
        //       ],
        //     )),
        //   ],
        // ),
      ],
    );
  }
}
