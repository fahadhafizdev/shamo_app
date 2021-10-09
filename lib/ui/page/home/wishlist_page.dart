import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/widget/custom_header_widget.dart';
import 'package:shamo_app/ui/widget/custom_wishlist_widget.dart';

class WishListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget contentNoMessage() {
      return Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 200),
              child: Image.asset(
                'assets/images/icon_love.png',
                color: blueColor,
                height: 80,
                width: 80,
              ),
            ),
            Text(
              ' You don\'t have dream shoes?',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Let\'s find your favorite shoes',
              style: blackTextStyle,
            ),
            SizedBox(height: 20),
            Container(
              height: 44,
              width: 152,
              child: ElevatedButton(
                style: btnStyle,
                onPressed: () {},
                child: Text(
                  'Explore Store',
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Column(
        children: [
          CustomWishList(),
          CustomWishList(),
          CustomWishList(),
        ],
      );
    }

    return ListView(
      children: [
        CustomHeader(text: 'Favorite Shoes'),
        SizedBox(height: 21),
        content(),
      ],
    );
  }
}
