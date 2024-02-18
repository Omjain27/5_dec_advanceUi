import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Que71video extends StatefulWidget {
  const Que71video({super.key});

  @override
  State<Que71video> createState() => _Que71videoState();
}

class _Que71videoState extends State<Que71video> {
 late VideoPlayerController _videocontrolle;
  late Future<void> _initilizingvideoplayer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _videocontrolle = VideoPlayerController.networkUrl("https://youtube.com/shorts/KW6auVcbxJ0?si=59gFqYRNLdD-jOVn" as Uri);
    _initilizingvideoplayer = _videocontrolle.initialize();
    _videocontrolle.setLooping(true);
  }

  void dispose() {
    _videocontrolle.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Video",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder(
        future: _initilizingvideoplayer,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _videocontrolle.value.aspectRatio,
              child: VideoPlayer(_videocontrolle),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_videocontrolle.value.isPlaying) {
              _videocontrolle.pause();
            } else {
              _videocontrolle.play();
            }
          });
        },
        child: Icon(
            _videocontrolle.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}
