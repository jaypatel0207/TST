import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("ImageSlider in Flutter"),
        centerTitle: true, 
        backgroundColor: Colors.blue, 

      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Column(
            children: [
              SizedBox(
                height: 250, 
                width: double.infinity,
                child: AnotherCarousel(images: [
                 AssetImage("assets/1.png"), 
                 AssetImage("assets/2.jpg"), 
                 AssetImage("assets/3.png")
                ], 
                dotSize: 5, 
                indicatorBgPadding: 5, 
          
                
                
                )
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}