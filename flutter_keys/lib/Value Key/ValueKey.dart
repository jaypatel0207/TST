import 'package:flutter/material.dart';



class Valuekey extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Valuekey> {
  List<int> numbers = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:const  Text('ValueKey Example')),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListTile(
              key: ValueKey(numbers[index]),
              title: Text('Item ${numbers[index]}'),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              numbers.shuffle(); 
            });
          },
          child: Icon(Icons.shuffle),
        ),
      ),
    );
  }
}
