import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CartPage extends StatelessWidget {
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
            'Your Cart',
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18,
            ),
          ),
        ),
        preferredSize: Size.fromHeight(70),
      );
    }

    return Scaffold(
      appBar: header(),
      backgroundColor: bgColor2,
      body: Center(
        child: Text('Cart Page'),
      ),
    );
  }
}
