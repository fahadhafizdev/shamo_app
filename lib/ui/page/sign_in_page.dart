import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget headerTitle() {
      return Container(
        height: 60,
        margin: EdgeInsets.only(
          left: 30,
          top: 70,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 24,
              ),
            ),
            Text(
              'Sign In to Countinue',
              style: blackTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 14,
              ),
            )
          ],
        ),
      );
    }

    Widget buttonSignIn() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        height: 50,
        width: 315,
        child: ElevatedButton(
          onPressed: () {},
          style: btnStyle,
          child: Text(
            'Sign In',
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerTitle(),
          buttonSignIn(),
        ],
      ),
    );
  }
}
