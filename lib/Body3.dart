import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Body3 extends StatefulWidget {
  const Body3({super.key});

  @override
  State<Body3> createState() => _Body3State();
}

class _Body3State extends State<Body3> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    const videoUrl = "https://www.youtube.com/watch?v=dQw4w9WgXcQ";
    String? videoId = YoutubePlayer.convertUrlToId(videoUrl);
    if (videoId != null) {
      _controller = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      );
    } else {
      // Handle the case where videoId is null
      print('Invalid video URL');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.all(1)),
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
            ],
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(16), // กำหนดรัศมีของขอบโค้งมน
          child: SizedBox(
            width: 300, // กำหนดความกว้างของวีดีโอให้เล็กลง
            height: 200, // กำหนดความสูงของวีดีโอให้เล็กลง
            child: (_controller.initialVideoId.isNotEmpty)
                ? YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                  )
                : const Center(child: Text('Unable to load video')),
          ),
        ),
      ],
    );
  }
}
