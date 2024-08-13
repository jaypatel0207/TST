import 'package:flutter/material.dart';
import 'package:flutter_splash_screens/Flutter%20Charts/LinearCharts.dart';
import 'package:flutter_splash_screens/Flutter%20Charts/columnchart.dart';

class Barhome extends StatefulWidget {
  const Barhome({super.key});

  @override
  State<Barhome> createState() => _BarhomeState();
}

class _BarhomeState extends State<Barhome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Bar Charts'),
            centerTitle: true,
            backgroundColor: Colors.blue,
            bottom: TabBar(tabs: [
              Tab(
                child: Text(
                  "Linear Chart",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Column Chart",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ]),
          ),
          body: Expanded(
              child: TabBarView(children: [Linearcharts(), Columnchart()])),
        ));
  }
}
