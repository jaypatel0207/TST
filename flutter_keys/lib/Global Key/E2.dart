import 'package:flutter/material.dart';



class E2 extends StatelessWidget {
  // Create a GlobalKey for Navigator
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  const E2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: FirstPage(),
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/second') {
          return MaterialPageRoute(builder: (context) => SecondPage());
        }
        return null;
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('GlobalKey Navigator Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Use the GlobalKey to navigate to another page
            E2.navigatorKey.currentState?.pushNamed('/second');
          },
          child:const  Text('Go to Second Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: const Center(
        child: Text('This is the second page.'),
      ),
    );
  }
}
