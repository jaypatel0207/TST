import 'package:flutter/material.dart';
import 'package:flutter_splash_screens/Flutter%20Charts/Circularchart.dart';
import 'package:flutter_splash_screens/Flutter%20Charts/DounghtChart.dart';
import 'package:flutter_splash_screens/Flutter%20Charts/RadialChart.dart';

class Piehome extends StatefulWidget {
  const Piehome({super.key});

  @override
  State<Piehome> createState() => _PiehomeState();
}

class _PiehomeState extends State<Piehome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      appBar: AppBar(
        title: Text("Flutter Charts"),
        centerTitle: true, 
        backgroundColor: Colors.blue,
        elevation: 5,
       ),
      
      
       body: Column(
         children: [
           Container(
             child: TabBar(
              tabs: [
             
                Tab(
                    child:   Text("Pie Chart"), 
                    
                ), 
             
             
             
             
                Tab(
                  child:   Text("Donght Chart"), 
                ),
             
             
             
             
             
             
                Tab(
                  child:   Text("Radial Chart"),
                ),
             
                
             
             
             
              
                
              ]),
           ),



           Expanded(
            
            child: TabBarView(children: [
                Circularchart(), 
                 Dounghtchart(), 
                    Radialchart(), 
            ]))
         ],
       ), 

        
      ),
      
    );
  }
}



















class MyCustomTab extends StatefulWidget { 
  const MyCustomTab({super.key}); 
  
  @override 
  State<MyCustomTab> createState() => _MyCustomTabState(); 
} 
  
class _MyCustomTabState extends State<MyCustomTab> { 
  @override 
  Widget build(BuildContext context) { 
    return DefaultTabController( 
      length: 4, 
      child: Scaffold( 
        appBar: AppBar( 
          title: Text("Custom Tap"), 
        ), 
        body: Padding( 
          padding: const EdgeInsets.all(8.0), 
          child: Column( 
            // mainAxisAlignment: MainAxisAlignment.start, 
            crossAxisAlignment: CrossAxisAlignment.start, 
            // ignore: prefer_const_literals_to_create_immutables 
            children: [ 
              // ignore: prefer_const_literals_to_create_immutables 
              Container( 
                height: 50, 
                decoration: BoxDecoration( 
                    borderRadius: BorderRadius.circular(20), color: Colors.red), 
                child: TabBar( 
                  indicator: BoxDecoration( 
                    color: Colors.red[800], 
                    borderRadius: BorderRadius.circular(20), 
                  ), 
                  labelColor: Colors.black, 
                  dividerColor: Colors.black, 
                  // ignore: prefer_const_literals_to_create_immutables 
                  tabs: [ 
                    Tab( 
                      icon: Icon( 
                        Icons.add_box, 
                        color: Colors.black, 
                      ), 
                    ), 
                    Tab( 
                      icon: Icon( 
                        Icons.video_call, 
                        color: Colors.black, 
                      ), 
                    ), 
                    Tab( 
                      icon: Icon( 
                        Icons.portrait_sharp, 
                        color: Colors.black, 
                      ), 
                    ), 
                  ], 
                ), 
              ), 
              Expanded( 
                child: TabBarView(children: [ 
                  // MyPostTab(), 
                  // MyReelsTab(), 
                  // MyTagTab(), 
                ]), 
              ) 
            ], 
          ), 
        ), 
      ), 
    ); 
  } 
}