// 67. Write a code to display profile and logout option in options menu

import 'package:flutter/material.dart';

class Que67 extends StatefulWidget {
  const Que67({super.key});

  @override
  State<Que67> createState() => _Que67State();
}

class _Que67State extends State<Que67> {
  String? optns = "Options";
  String? Prof = "Profile";
  String? log = "Log Out";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Que 67"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(children: [
        ListTile(
          title: Text("$optns"),
          trailing: PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("$Prof"),
                value: Prof,
              ),
              PopupMenuItem(
                child: Text("$log"),
                value: log,
              )
            ],
            onSelected: (String newvalue) {
              setState(() {
                Text("$newvalue");
              });
            },
          ),
        ),
      ]),
    );
  }
}
