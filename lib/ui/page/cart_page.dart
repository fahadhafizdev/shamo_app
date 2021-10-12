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

    Widget contentNoCart() {
      return Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: 20,
                top: 180,
              ),
              height: 69,
              width: 79,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/icon_cart.png',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Text(
                'Opss! Your Cart is Empty',
                textAlign: TextAlign.center,
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
            ),
            Text(
              'Let\'s find your favorite shoes',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                color: Color(0xff999999),
              ),
            ),
            Container(
              height: 44,
              width: MediaQuery.of(context).size.width - (112 + 111),
              margin: EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                style: btnStyle,
                onPressed: () {},
                child: Text(
                  'Explore Store',
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      backgroundColor: bgColor2,
      body: contentNoCart(),
    );
  }
}
