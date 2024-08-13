import 'package:flutter/material.dart';
import 'package:flutter_splash_screens/Flutter%20Charts/Circularchart.dart';
import 'package:flutter_splash_screens/Flutter%20Charts/LinearCharts.dart';
import 'package:flutter_splash_screens/Flutter%20Charts/barhome.dart';
import 'package:flutter_splash_screens/Flutter%20Charts/piehome.dart';
import 'package:flutter_splash_screens/Image_slider/auto_image_slider.dart';
import 'package:flutter_splash_screens/Image_slider/image.dart';
import 'package:flutter_splash_screens/Photo_View/photoexample.dart';
import 'package:flutter_splash_screens/Slidable%20Widget/1.dart';
import 'package:flutter_splash_screens/lottie/lottie.dart';
import 'package:flutter_splash_screens/navigation%20bar/type2/home_page.dart';
import 'package:flutter_splash_screens/navigation%20bar/type3/home3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        primaryColor: Colors.green, 
        primarySwatch: Colors.green,
      ),
    
      home:  Photoexample(),
    );
  }
}

