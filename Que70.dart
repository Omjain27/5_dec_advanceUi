// 70. Create an application with bottom navigation with 3 tabs Gallery,
// audio and video and design each page with dummy data

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:module_4/Que70/Que70.1gallery.dart';

import 'Que70.2audio.dart';
import 'Que70.3video.dart';

class Que70 extends StatefulWidget {
  const Que70({super.key});

  @override
  State<Que70> createState() => _Que70State();
}

class _Que70State extends State<Que70> {
  int _currentindex = 0;
  List MyList = [
    Que71gallery(),
    Que71audio(),
    Que71video(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Que 70"),
        backgroundColor: Colors.deepPurple,
      ),
      body: MyList.elementAt(_currentindex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.browse_gallery_sharp),label: "gallery"),
          BottomNavigationBarItem(icon: Icon(Icons.audio_file),label: "audio"),
          BottomNavigationBarItem(icon: Icon(Icons.video_camera_front),label: "video"),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: tap,
        currentIndex: _currentindex,
      ),
    );
  }

  void tap(index) {
    setState(() {
      _currentindex = index;
    });
  }
}
