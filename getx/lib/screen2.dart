import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.to(myhomepage());
              },
              child: Text("Go to Previos Screen"))
        ],
      ),
    );
  }
}
