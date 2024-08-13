import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Swipeexample extends StatefulWidget {
  const Swipeexample({super.key});

  @override
  State<Swipeexample> createState() => _SwipeexampleState();
}

class _SwipeexampleState extends State<Swipeexample> {
  List images = [
    "assets/1.png",
    "assets/2.jpg",
    "assets/3.png",
    "assets/logo.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Container(
          height: 650,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: CardSwiper(
            cardsCount: 4,
            //allowedSwipeDirection: AllowedSwipeDirection.only(right: true),
            numberOfCardsDisplayed: 3,
            //isLoop: true,
            onSwipe: (previousIndex, currentIndex, direction) {
              if (direction == CardSwiperDirection.right) {
                Fluttertoast.showToast(
                    msg: ":):):):)",
                    backgroundColor: Colors.white,
                    fontSize: 28);
              } else if (direction == CardSwiperDirection.left) {
                Fluttertoast.showToast(
                    msg: "(:(:", backgroundColor: Colors.white, fontSize: 28);
              }
              return true;
            },
            cardBuilder: (context, index, horizontalOffsetPercentage,
                verticalOffsetPercentage) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
