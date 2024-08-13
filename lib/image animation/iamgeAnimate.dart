import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Listviewanimate extends StatefulWidget {
  const Listviewanimate({super.key});

  @override
  State<Listviewanimate> createState() => _ListviewanimateState();
}

class _ListviewanimateState extends State<Listviewanimate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            Center(
              child: FadeInLeft(
                duration: Duration(seconds: 1),
                //delay: Duration(seconds: 3),
                from: 300,

                child: Container(
                  height: 500,
                  width: 300,
                  child: Image.asset("assets/logo.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
