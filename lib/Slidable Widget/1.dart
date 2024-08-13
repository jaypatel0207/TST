import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class slidable1 extends StatefulWidget {
  const slidable1({super.key});

  @override
  State<slidable1> createState() => _slidable1State();
}

class _slidable1State extends State<slidable1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slidable Widget"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 5,
      ),
      body: Slidable(
        startActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: Colors.green,
            icon: Icons.phone,
          ),
             SlidableAction(
              
            onPressed: (context) {},
            backgroundColor: Colors.blue,
            icon: Icons.chat,
          ),
        ]
        
        ),
        endActionPane:  ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: Colors.red,
            icon: Icons.delete,
          ),

        ]
        
        ),
        child: Container(
          color: Colors.grey[300],
          child: ListTile(
            title: Text("Jay Patel"),
            subtitle: Text("+91 8980805595"),
            leading: Icon(
              Icons.person,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
