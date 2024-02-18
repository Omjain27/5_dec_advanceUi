// 66. Write a code to select Date on button's click event

import 'package:flutter/material.dart';

class Que66 extends StatefulWidget {
  const Que66({super.key});

  @override
  State<Que66> createState() => _Que66State();
}

class _Que66State extends State<Que66> {
  TextEditingController _datecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Que 66"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _datecontroller,
              decoration: InputDecoration(
                  labelText: "Select Date",
                  filled: true,
                  prefixIcon: Icon(Icons.calendar_today),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  )),
              readOnly: true,
              onTap: () {
                _selectdate();
              },
            ),
          )
        ],
      ),
    );
  }

  Future<void> _selectdate() async {
    DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2900),
    );
    if (_picked != null) {
      setState(() {
        _datecontroller.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
