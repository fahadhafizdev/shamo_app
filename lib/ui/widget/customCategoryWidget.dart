import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomCategory extends StatelessWidget {
  final String text;
  final bool isActive;
  CustomCategory({
    this.text,
    this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      height: 40,
      decoration: BoxDecoration(
        color: isActive ? purpleColor : mainColor,
        borderRadius: BorderRadius.circular(12),
        border: isActive ? null : Border.all(color: blackColor),
      ),
      child: Text(
        text,
        style: isActive
            ? whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 13,
              )
            : blackTextStyle.copyWith(
                fontWeight: light,
                fontSize: 13,
              ),
      ),
    );
  }
}
