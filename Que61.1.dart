// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Que61cartpage extends StatefulWidget {
  const Que61cartpage({super.key});

  @override
  State<Que61cartpage> createState() => _Que61cartpageState();
}

class _Que61cartpageState extends State<Que61cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text("Current Date",style: TextStyle(fontSize: 26),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text("+ Add to order",style: TextStyle(fontSize: 26),),
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("image"),
                Column(
                  children: [Text("veg food"), Text("- 1 +")],
                ),
                Column(
                  children: [Text("Rs.100"), Icon(Icons.cancel)],
                ),
              ],
            ),
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("image"),
                Column(
                  children: [Text("veg food"), Text("- 1 +")],
                ),
                Column(
                  children: [Text("Rs.100"), Icon(Icons.cancel)],
                ),
              ],
            ),
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("image"),
                Column(
                  children: [Text("veg food"), Text("- 1 +")],
                ),
                Column(
                  children: [Text("Rs.100"), Icon(Icons.cancel)],
                ),
              ],
            ),
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("image"),
                Column(
                  children: [Text("veg food"), Text("- 1 +")],
                ),
                Column(
                  children: [Text("Rs.100"), Icon(Icons.cancel)],
                ),
              ],
            ),
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("image"),
                Column(
                  children: [Text("veg food"), Text("- 1 +")],
                ),
                Column(
                  children: [Text("Rs.100"), Icon(Icons.cancel)],
                ),
              ],
            ),
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("image"),
                Column(
                  children: [Text("veg food"), Text("- 1 +")],
                ),
                Column(
                  children: [Text("Rs.100"), Icon(Icons.cancel)],
                ),
              ],
            ),
          ),
           Divider(),
                Card(
                  elevation: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Text("Total"), Text("rs.600")],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: ElevatedButton(onPressed: (){}, child: Text("Checkout")),
                )
        ],
      ),
    );
  }
}
