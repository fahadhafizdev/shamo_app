import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailProductPage extends StatelessWidget {
  List images = [
    'assets/images/shoes1_1.png',
    'assets/images/shoes1_2.png',
    'assets/images/shoes1_3.png',
  ];

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: defaultMargin,
              left: defaultMargin,
              top: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: darkPurple,
                  size: 24.0,
                ),
                Icon(
                  Icons.shopping_bag_rounded,
                  color: darkPurple,
                  size: 29.0,
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: images
                .map(
                  (e) => Image.asset(
                    e,
                    width: double.infinity,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      body: ListView(
        children: [
          header(),
        ],
      ),
    );
  }
}
