import 'package:flutter/material.dart';



class Uniquekey extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Uniquekey> {
  List<Widget> items = [
    Container(key: UniqueKey(), height: 100, color: Colors.red),
    Container(key: UniqueKey(), height: 100, color: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('UniqueKey Example')),
        body: Column(
          children: items,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              items.insert(0, items.removeAt(1)); 
            });
          },
          child: const Icon(Icons.swap_vert),
        ),
      ),
    );
  }
}
