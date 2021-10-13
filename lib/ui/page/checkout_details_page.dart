import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CheckoutDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return PreferredSize(
        child: AppBar(
          leading: Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
          backgroundColor: darkPurple,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Checkout Details',
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18,
            ),
          ),
        ),
        preferredSize: Size.fromHeight(70),
      );
    }

    Widget customBottomnNav() {
      return Container(
        height: 130,
        child: Column(
          children: [
            Divider(
              thickness: 0.5,
              color: laneColor,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              margin: EdgeInsets.symmetric(vertical: defaultMargin),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: btnStyle,
                onPressed: () {},
                child: Text(
                  'Checkout Now',
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor2,
      bottomNavigationBar: customBottomnNav(),
      appBar: header(),
    );
  }
}
