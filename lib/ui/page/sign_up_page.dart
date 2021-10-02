import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget headerTitle() {
      return Container(
        height: 60,
        margin: EdgeInsets.only(
          left: 30,
          top: 70,
          bottom: 50,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 24,
              ),
            ),
            Text(
              'Register and Happy Shoping',
              style: blackTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 14,
              ),
            )
          ],
        ),
      );
    }

    Widget buttonSignUp() {
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
            'Sign Up',
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
        ),
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
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
                      'assets/images/icon_user.png',
                      height: 12,
                      width: 17,
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        style: whiteTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Full Name',
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

    Widget userNameInput() {
      return Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
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
                      'assets/images/icon_round.png',
                      height: 12,
                      width: 17,
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        style: whiteTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Username',
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
        text: 'Sign In',
        style: purpleTextStyle.copyWith(
          fontWeight: medium,
        ),
      );
      return GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 30),
          child: Text.rich(
            TextSpan(
              text: 'Already have an account? ',
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
          nameInput(),
          userNameInput(),
          emailInput(),
          passwordInput(),
          buttonSignUp(),
          Spacer(),
          tagLink(),
        ],
      ),
    );
  }
}
