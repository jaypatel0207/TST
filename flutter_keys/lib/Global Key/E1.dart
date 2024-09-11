import 'package:flutter/material.dart';



class E1 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<E1> {
  // Create a GlobalKey for the CustomWidget
  final _customWidgetKey = GlobalKey<_CustomWidgetState>();

  void _changeColor() {
    // Access the CustomWidget's state and call a method
    _customWidgetKey.currentState?.changeColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('GlobalKey State Example'),
      ),
      body: Column(
        children: <Widget>[
          CustomWidget(key: _customWidgetKey),
          ElevatedButton(
            onPressed: _changeColor,
            child: const Text('Change Color'),
          ),
        ],
      ),
    );
  }
}

class CustomWidget extends StatefulWidget {
  const CustomWidget({super.key});

  @override
  _CustomWidgetState createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  Color _color = Colors.blue;

  void changeColor() {
    setState(() {
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: _color,
    );
  }
}
