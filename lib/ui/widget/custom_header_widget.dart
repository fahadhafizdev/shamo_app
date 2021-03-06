import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomHeader extends StatelessWidget {
  final String text;
  CustomHeader({this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: darkPurple,
      centerTitle: true,
      flexibleSpace: Container(
        padding: EdgeInsets.symmetric(
          vertical: 30,
        ),
        child: Text(
          '$text',
          style: whiteTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      // title: Text(
      //   '$text',
      //   style: whiteTextStyle.copyWith(
      //     fontWeight: medium,
      //     fontSize: 18,
      //   ),
      // ),
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }
}
