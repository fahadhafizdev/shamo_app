import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/widget/custom_header_widget.dart';

class CheckoutSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 180),
        child: Column(
          children: [
            Image.asset(
              'assets/images/icon_cart.png',
              height: 69,
              width: 79.41,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Text(
              'You made a transaction',
              textAlign: TextAlign.center,
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Stay at home while we\nprepare your dream shoes',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 44,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 12),
              padding: EdgeInsets.symmetric(
                horizontal: 90,
              ),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/main-page', (route) => false),
                style: btnStyle,
                child: Text(
                  'Order Other Shoes',
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              height: 44,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 90),
              child: ElevatedButton(
                onPressed: () {},
                style: btnStyle3,
                child: Text(
                  'View My Order',
                  style: whiteTextStyle.copyWith(
                    color: Color(0xffB7B6BF),
                    fontWeight: medium,
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
      body: ListView(
        children: [
          CustomHeader(text: 'Checkout Success'),
          content(),
        ],
      ),
    );
  }
}
