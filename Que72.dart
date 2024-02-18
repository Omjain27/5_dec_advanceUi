import 'package:flutter/material.dart';

class Que72 extends StatefulWidget {
  const Que72({super.key});

  @override
  State<Que72> createState() => _Que72State();
}

class _Que72State extends State<Que72> {
  var alert;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Que 72"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          alert = AlertDialog(
            title: Text("Alert"),
            content: Text("press bottom for grant permession"),
            actions: [
              ElevatedButton(onPressed: (){}, child: Text("yes"))
            ],
          )
        ],
      ),
    );
  }
}
