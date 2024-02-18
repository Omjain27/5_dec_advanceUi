import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Que71audio extends StatefulWidget {
  const Que71audio({super.key});

  @override
  State<Que71audio> createState() => _Que71audioState();
}

class _Que71audioState extends State<Que71audio> {
  late AudioPlayer musicaudo;
  bool isplaying = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Text("music"),
          trailing: IconButton(
              onPressed: () {
                if (isplaying) {
                  pauseAudio();
                } else {
                  playAudio();
                }
              },
              icon: Icon(isplaying ? Icons.pause : Icons.play_arrow)),
        ),
      ],
    );
  }

  void playAudio() async {
    int result = musicaudo.play("audio/kftn.mp3" as Source) as int;
    if (result == 1) {
      setState(() {
        isplaying = true;
      });
    }
  }

  void pauseAudio() {
    int result = musicaudo.pause() as int;
    if (result == 0) {
      setState(() {
        isplaying == false;
      });
    }
  }
}
