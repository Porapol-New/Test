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
    _controller = VideoPlayerController.asset('assets/videos/Green-Office.mp4')
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(padding: EdgeInsets.all(20)),
        Expanded(
          child: Column(
            children: const [
              Text(
                "Guidelines for creating a green office",
                style: TextStyle(fontSize: 40),
              ),
              Text(
                "คลิปวิดิโอนำเสนอการจัดทำสำนักงานสีเขียว โดยจะบอกถึงขั้นตอนและสิ่งที่ควรทำเพื่อให้เรากลายเป็นสำนักงานสีเขียว หรือ Green office นั้นเอง",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        if (_controller.value.isInitialized)
          Column(
            children: [
              Padding(padding: EdgeInsets.only(right: 1)),
              SizedBox(
                width: 700,
                height: 400,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                  child: VideoPlayer(_controller),
                ),
              )
              // ClipRRect(
              //   borderRadius: BorderRadius.only(
              //       bottomLeft: Radius.circular(100),
              //       topLeft: Radius.circular(100)),
              //   child: Expanded(
              //     flex: 1,
              //     child: SizedBox(
              //       width: 720, // ปรับความกว้างของวิดีโอที่นี่
              //       height: 400, // ปรับความสูงของวิดีโอที่นี่
              //       child: AspectRatio(
              //         aspectRatio: _controller.value.aspectRatio,
              //         child: VideoPlayer(_controller),
              //       ),
              //     ),
              //   ),
              // ),
              ,
              IconButton(
                iconSize: 40,
                icon: Icon(
                  _isPlaying ? Icons.pause : Icons.play_arrow,
                ),
                onPressed: _togglePlayPause,
              ),
            ],
          )
      ],
    );
  }
}
