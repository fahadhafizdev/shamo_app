import 'package:flutter/gestures.dart';
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
          bottom: 70,
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
        margin: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
        height: 50,
        width: double.infinity,
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

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: darkGreyColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_password.png',
                      height: 19,
                      width: 18,
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        style: whiteTextStyle,
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Password',
                          hintStyle: blackTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: darkGreyColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_email.png',
                      height: 12,
                      width: 17,
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        style: whiteTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: blackTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget tagLink() {
      var textSpan = TextSpan(
        text: 'Sign Up',
        style: purpleTextStyle.copyWith(
          fontWeight: medium,
        ),
      );
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/sign-up');
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 30),
          child: Text.rich(
            TextSpan(
              text: 'Don\'t have an account? ',
              style: blackTextStyle,
              children: [textSpan],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: mainColor,
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerTitle(),
          emailInput(),
          passwordInput(),
          buttonSignIn(),
          Spacer(),
          tagLink(),
        ],
      ),
    );
  }
}
