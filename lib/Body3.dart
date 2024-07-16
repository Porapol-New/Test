import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Body3 extends StatefulWidget {
  const Body3({super.key});

  @override
  State<Body3> createState() => _Body3State();
}

class _Body3State extends State<Body3> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
      _isPlaying = !_controller.value.isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.all(0)),
        const Padding(padding: EdgeInsets.all(20)),
        Expanded(
          child: Column(
            children: [
              const Text(
                "การประหยัดพลังงาน",
                style: TextStyle(fontSize: 50),
              ),
              const Text(
                "  ใช้อุปกรณ์ไฟฟ้าที่มีประสิทธิภาพสูง ปรับการใช้แสงไฟ เครื่องใช้ไฟฟ้า และระบบทำความร้อน/เย็นให้มีประสิทธิภาพสูงสุด และปิดไฟและอุปกรณ์เมื่อไม่ได้ใช้งาน",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              if (_controller.value.isInitialized)
                AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
              IconButton(
                icon: Icon(
                  _isPlaying ? Icons.pause : Icons.play_arrow,
                ),
                onPressed: _togglePlayPause,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
