import 'package:flutter/material.dart';



class E22 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<E22> {
  final List<int> _items = List.generate(10, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ValueKey GridView Example'),
      ),
      body: GridView.builder(
        gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Container(
            key: ValueKey(_items[index]), 
            color: Colors.teal[(index % 9 + 1) * 100],
            child: Center(
              child: Text(
                'Item ${_items[index]}',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
