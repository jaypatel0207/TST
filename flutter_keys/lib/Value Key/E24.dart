import 'package:flutter/material.dart';



class E24 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<E24> {
  final List<String> _fields = List.generate(3, (index) => 'Field $index');
  final Map<String, TextEditingController> _controllers = {};

  @override
  void initState() {
    super.initState();
    for (var field in _fields) {
      _controllers[field] = TextEditingController();
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ValueKey Form Fields Example'),
      ),
      body: Form(
        child: Column(
          children: _fields.map((field) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                key: ValueKey(field), 
                controller: _controllers[field],
                decoration: InputDecoration(labelText: field),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
