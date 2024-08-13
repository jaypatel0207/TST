import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:photo_view/photo_view.dart';

class Photoexample extends StatefulWidget {
  const Photoexample({super.key});

  @override
  State<Photoexample> createState() => _PhotoexampleState();
}

class _PhotoexampleState extends State<Photoexample> {
  List person = [
    {
      "Name": "Jay Patel",
      "Location": "Ahmedabad, INDIA",
      "image": "assets/1.png"
    },
    {
      "Name": "Shreya Patel",
      "Location": "Nikol, INDIA",
      "image": "assets/2.jpg"
    },
    {
      "Name": "Anuj Patel",
      "Location": "Naroda, INDIA",
      "image": "assets/1.png"
    },
    {
      "Name": "Kalpesh Patel",
      "Location": "Gujarat, INDIA",
      "image": "assets/2.jpg"
    },
    {
      "Name": "Urmila Patel",
      "Location": "Ahmedabad, INDIA",
      "image": "assets/3.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300, 
          width: 300,
          child: PhotoView(
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered,
            enableRotation: true,
            backgroundDecoration: BoxDecoration(color: Colors.white),
            imageProvider: AssetImage("assets/2.jpg")),
        ),
      )
      
      
      
      
      
      // SafeArea(
      //   child: Center(
      //     child: Container(
      //       height: 200, 
      //       width: 200, 
      //       child: InstaImageViewer(
      //         backgroundColor: Colors.white,
      //         child: Image.asset("assets/1.png",fit: BoxFit.cover)),
      //     ),
      //   ),
      // ),
    );
  }
}
