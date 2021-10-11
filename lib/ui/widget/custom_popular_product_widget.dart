import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomPopularProduct extends StatelessWidget {
  final String imageUrl;
  final String textCategory;
  final String name;
  final double price;

  CustomPopularProduct({
    this.name,
    this.imageUrl,
    this.textCategory,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-product');
      },
      child: Container(
        padding: EdgeInsets.only(
          top: defaultMargin,
          bottom: 20,
        ),
        margin: EdgeInsets.only(right: defaultMargin),
        height: 278,
        width: 215,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: 215,
              margin: EdgeInsets.only(bottom: defaultMargin),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                bottom: 6,
              ),
              child: Text(
                textCategory,
                style: greyTextStyle.copyWith(fontSize: 12),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                bottom: 6,
              ),
              child: Text(
                name,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                '\$$price',
                style: blueTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
