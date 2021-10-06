import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomPopularProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                image: AssetImage('assets/images/shoes1.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              bottom: 6,
            ),
            child: Text(
              'Hiking',
              style: greyTextStyle.copyWith(fontSize: 12),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              bottom: 6,
            ),
            child: Text(
              'COURT VISION 2.0',
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
              '\$58,67',
              style: blueTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
