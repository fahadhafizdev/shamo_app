import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomButtonProfile extends StatelessWidget {
  final String text;
  CustomButtonProfile({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: blackColor.withOpacity(0.2),
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: blackTextStyle.copyWith(fontSize: 15),
            ),
          ),
          Image.asset(
            'assets/images/icon_arrow.png',
            height: 8,
            width: 14,
          ),
        ],
      ),
    );
  }
}
