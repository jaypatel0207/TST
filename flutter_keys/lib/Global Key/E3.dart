import 'package:flutter/material.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Create a GlobalKey for the TextFieldWidget
  final _textControllerKey = GlobalKey<_TextFieldWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GlobalKey TextEditingController Example'),
      ),
      body: Column(
        children: <Widget>[
          TextFieldWidget(key: _textControllerKey),
          ElevatedButton(
            onPressed: () {
              // Access the TextEditingController through the GlobalKey
              final text = _textControllerKey.currentState?.getText();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Text: $text')));
            },
            child:const  Text('Show Text'),
          ),
        ],
      ),
    );
  }
}

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final TextEditingController _controller = TextEditingController();

  String getText() => _controller.text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration:const  InputDecoration(labelText: 'Enter text'),
    );
  }
}
