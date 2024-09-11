import 'package:flutter/material.dart';
import 'package:flutter_keys/customeAppBar.dart';



class E13 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<E13> {
  final List<TextEditingController> _controllers = [TextEditingController()];

  void _addField() {
    setState(() {
      _controllers.add(TextEditingController());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(), 
      body: Form(
        child: Column(
          children: _controllers.asMap().entries.map((entry) {
            int index = entry.key;
            TextEditingController controller = entry.value;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                key: UniqueKey(), 
                controller: controller,
                decoration: InputDecoration(labelText: 'Field $index'),
              ),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addField,
        child: Icon(Icons.add),
      ),
    );
  }
}
