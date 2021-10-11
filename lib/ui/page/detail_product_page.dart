import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailProductPage extends StatefulWidget {
  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  final List images = [
    'assets/images/shoes1_1.png',
    'assets/images/shoes1_2.png',
    'assets/images/shoes1_3.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget indicators(int index) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 2),
        width: (index == currentIndex) ? 16 : 4,
        height: 4,
        decoration: BoxDecoration(
          color: (index == currentIndex) ? purpleColor : Color(0xffC4C4C4),
          borderRadius: BorderRadius.circular(10),
        ),
      );
    }

    Widget header() {
      int index = -1;
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
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                  print('$reason : $currentIndex');
                });
              },
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.map((e) {
                print(index);
                index++;

                return indicators(index);
              }).toList()),
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
