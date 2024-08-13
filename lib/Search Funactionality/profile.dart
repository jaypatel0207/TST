import 'package:flutter/material.dart';
import "package:flutter_splash_screens/Search Funactionality/search.dart";

class Profile extends StatefulWidget {
  final String? name;
  final String? number;

  Profile({
    super.key,
    required this.name,
    required this.number,
  });

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.name}"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("This is the Profile of ${widget.name}"),
            Text("Number : ${widget.number}"),
          ],
        ),
      ),
    );
  }
}
