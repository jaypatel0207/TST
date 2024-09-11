import 'package:flutter/material.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  // Create a GlobalKey for Scaffold
  static final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: MyApp2.scaffoldKey,
      appBar: AppBar(
        title: Text('GlobalKey Drawer Example'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Text('Drawer Header')),
            ListTile(title: Text('Item 1')),
            ListTile(title: Text('Item 2')),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Use the GlobalKey to open the Drawer
            MyApp2.scaffoldKey.currentState?.openDrawer();
          },
          child: Text('Open Drawer'),
        ),
      ),
    );
  }
}
