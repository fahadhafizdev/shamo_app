import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomImage extends StatelessWidget {
  final String imageUrl;
  CustomImage({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 54,
      margin: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imageUrl),
        ),
      ),
    );
  }
}
