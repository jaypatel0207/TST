import 'package:flutter/material.dart';

class Profilemovie extends StatefulWidget {
  final String? title;
  final String? awards;
   Profilemovie({super.key, required this.title, required this.awards});

  @override
  State<Profilemovie> createState() => _ProfilemovieState();
}

class _ProfilemovieState extends State<Profilemovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: Center(child: Text("${widget.awards}"))
    );
  }
}