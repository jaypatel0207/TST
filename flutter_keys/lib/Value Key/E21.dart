import 'package:flutter/material.dart';



class E21 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<E21> {
  final List<String> _items = List.generate(5, (index) => 'Item $index');

  void _addItem() {
    setState(() {
      _items.add('Item ${_items.length}');
    });
  }

  void _removeItem() {
    setState(() {
      if (_items.isNotEmpty) {
        _items.removeLast();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ValueKey ListView Example'),
      ),
      body: ListView(
        children: _items.map((item) {
          return ListTile(
            key: ValueKey(item), 
            title: Text(item),
          );
        }).toList(),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _removeItem,
            child:  Icon(Icons.remove),
            heroTag: 'remove',
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _addItem,
            child: Icon(Icons.add),
            heroTag: 'add',
          ),
        ],
      ),
    );
  }
}
