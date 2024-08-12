import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AutoImageSlider extends StatefulWidget {
  const AutoImageSlider({super.key});

  @override
  State<AutoImageSlider> createState() => _AutoImageSliderState();
}

class _AutoImageSliderState extends State<AutoImageSlider> {
  final myItems = [
    Image.asset("assets/1.png"),
    Image.asset("assets/2.jpg"),
    Image.asset("assets/3.png"),
    Image.asset("logo.jpg")
  ];

  int mycurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Auto image Slider"),
        elevation: 3,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          CarouselSlider(
              items: myItems,
              options: CarouselOptions(
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayInterval: Duration(seconds: 2),
                enlargeCenterPage: true,
                aspectRatio: 2.0,

                autoPlay: true,
                height: 200,
                onPageChanged: (index, reason) {
                  mycurrentIndex = index;
                },
              )),  


              AnimatedSmoothIndicator(activeIndex: mycurrentIndex, count: myItems.length, 
              effect:WormEffect(
                dotHeight: 6, 
                dotWidth: 6,
                spacing: 5, 
                dotColor: Colors.yellow, 
                activeDotColor: Colors.red, 
                paintStyle: PaintingStyle.fill
              ) ,
              
              )
        ],
      ),
    );
  }
}
