import 'package:flutter/material.dart';

class Que71gallery extends StatefulWidget {
  const Que71gallery({super.key});

  @override
  State<Que71gallery> createState() => _Que71galleryState();
}

class _Que71galleryState extends State<Que71gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gallery",style: TextStyle(color: Colors.white),),backgroundColor:Colors.black,),
      body: Center(
        child: Container(
          color: Colors.purple,
          child: Image.network("https://miro.medium.com/v2/resize:fit:1000/0*s7of7kWnf9fDg4XM.jpeg")
        ),
      ),
    );
  }
}