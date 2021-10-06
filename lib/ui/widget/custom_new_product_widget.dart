import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomNewProduct extends StatelessWidget {
  final String imageUrl;
  final String textCategory;
  final String name;
  final double price;

  CustomNewProduct({
    this.name,
    this.imageUrl,
    this.textCategory,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 290,
      margin: EdgeInsets.only(bottom: defaultMargin),
      child: Row(
        children: [
          Container(
            height: 120,
            width: 120,
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: whiteColor,
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                textCategory,
                style: greyTextStyle.copyWith(fontSize: 12),
              ),
              Container(
                width: 151,
                child: Text(
                  name,
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.clip,
                ),
              ),
              Text(
                '\$$price',
                style: blueTextStyle.copyWith(fontWeight: medium),
              )
            ],
          ),
        ],
      ),
    );
  }
}
