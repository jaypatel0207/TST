import 'package:flutter/material.dart';
import 'package:flutter_splash_screens/Flutter%20Charts/columnchart.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Slidable extends StatefulWidget {
  const Slidable({super.key});

  @override
  State<Slidable> createState() => _SlidableState();
}

class _SlidableState extends State<Slidable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Slidable widget",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SlideAction(
          elevation: 5,
          innerColor: Colors.white,
          outerColor: Colors.blue,
          sliderButtonIcon: Icon(Icons.currency_rupee_outlined),
          text: "Slide to Pay",
          
          onSubmit: () {
      
          },
        ),
      )),
    );
  }
}
