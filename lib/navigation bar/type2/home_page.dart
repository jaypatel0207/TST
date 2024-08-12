import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     int _page = 0;
    return Scaffold(
      backgroundColor: Colors.green,
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.green,
          animationDuration: Duration(milliseconds: 300),
          
          animationCurve: Curves.easeInOut,
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          items: [
            Icon(Icons.home),
            Icon(Icons.favorite),
            Icon(Icons.settings),
            Icon(Icons.camera),
            Icon(Icons.person)
          ]),


          body: Center(child: Text(_page.toString(),style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),)),
    );

    
  }
}
