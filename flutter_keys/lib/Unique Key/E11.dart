import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_keys/customeAppBar.dart';

class E11 extends StatefulWidget {
  const E11({super.key});

  @override
  State<E11> createState() => _E11State();
}

class _E11State extends State<E11> {
 final List<String> _items = List.generate(5, (index)=> "Item $index");

 void _addItem(){
  setState(() {
    _items.add("Item ${_items.length}");
  });
 }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(), 
      body: ListView(
        children: _items.map((item){
          return ListTile(
            key: UniqueKey(),
            title: Text(item),
          );
        }).toList()
      ), 

      floatingActionButton: FloatingActionButton(onPressed: _addItem, child: const Icon(Icons.add),) ,
    );
  }
}
