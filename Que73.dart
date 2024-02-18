// 73. Write a code to display Splash Screen using Activity

import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/flutter_splash_screen.dart';

import 'Que73.1.dart';

class Que73 extends StatefulWidget {
  const Que73({super.key});

  @override
  State<Que73> createState() => _Que73State();
}

class _Que73State extends State<Que73> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashscreen();
  }

  Future<void> splashscreen() async {
    await Future.delayed(Duration(seconds: 2), () {
      FlutterSplashScreen.hide();

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Que73Homepage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Que 73"),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 400,
            color: Colors.teal,
            child: Center(
              child: Text("Splash screen Que 73"),
            ),
          )
        ],
      ),
    );
  }
}
