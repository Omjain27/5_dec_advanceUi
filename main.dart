import 'package:flutter/material.dart';
import 'package:module_4/Que63.dart';
import 'package:module_4/Que68.dart';

import 'Que61/Que61.1.dart';
import 'Que61/Que61.dart';
import 'Que62.dart';
import 'Que64.dart';
import 'Que65.dart';
import 'Que66.dart';
import 'Que67.dart';
import 'Que69.dart';
import 'Que70/Que70.2audio.dart';
import 'Que70/Que70.dart';
import 'Que72.dart';
import 'Que73/Que73.dart';
import 'Que75.dart';
import 'Que76/Que76.1.dart';
import 'Que78.dart';

void main() {
  runApp(MyAppp());
}

class MyAppp extends StatelessWidget {
  const MyAppp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Que61Homepage(),
    );
  }
}
