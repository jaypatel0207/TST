import 'package:flutter/material.dart';
import 'package:flutter_keys/customeAppBar.dart';


class E14 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<E14> {
  bool _showBox = true;

  void _toggleBox() {
    setState(() {
      _showBox = !_showBox;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(), 
      body: Center(
        child: AnimatedSwitcher(
          duration: Duration(seconds: 1),
          child: _showBox
              ? Container(
                  key: UniqueKey(), 
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                )
              : Container(
                  key: UniqueKey(), 
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleBox,
        child: const  Icon(Icons.swap_horiz),
      ),
    );
  }
}
