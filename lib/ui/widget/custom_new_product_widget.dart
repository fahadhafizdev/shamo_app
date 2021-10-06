import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomNewProduct extends StatelessWidget {
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
                image: AssetImage('assets/images/new_shoes1.png'),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Football',
                style: greyTextStyle.copyWith(fontSize: 12),
              ),
              Container(
                width: 151,
                child: Text(
                  'Predator 20.3 Firm Ground',
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.clip,
                ),
              ),
              Text(
                '\$68,47',
                style: blueTextStyle.copyWith(fontWeight: medium),
              )
            ],
          ),
        ],
      ),
    );
  }
}
