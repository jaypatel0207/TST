import 'package:flutter/material.dart';


class E33 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<E33> {
  bool _showFirst = true;

  void _toggleWidget() {
    setState(() {
      _showFirst = !_showFirst;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ValueKey Animated Widgets Example'),
      ),
      body: Center(
        child: AnimatedSwitcher(
          duration: Duration(seconds: 1),
          child: _showFirst
              ? Container(
                  key: ValueKey('first'), // Use ValueKey to differentiate between widgets
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                )
              : Container(
                  key: ValueKey('second'), // Use ValueKey to differentiate between widgets
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleWidget,
        child: Icon(Icons.swap_horiz),
      ),
    );
  }
}
