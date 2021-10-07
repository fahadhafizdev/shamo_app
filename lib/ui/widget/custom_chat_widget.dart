import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomChatWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin,
        vertical: 12,
      ),
      width: double.infinity,
      height: 67,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: blackColor,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 54,
            width: 54,
            margin: EdgeInsets.only(
              right: 12,
              bottom: 12,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/logo_round.png',
                ),
              ),
            ),
          ),
          Container(
            width: 189,
            margin: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoe Store',
                  style: whiteTextStyle.copyWith(
                    fontSize: 15,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Good night, This item is on hello world',
                  style: blackTextStyle.copyWith(
                    fontWeight: light,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Text(
              'Now',
              style: blackTextStyle.copyWith(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
