import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: darkPurple,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/images/icon_refuse.png',
                    height: 14,
                  ),
                ),
                Text(
                  'Edit Profile',
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                Image.asset(
                  'assets/images/icon_accept.png',
                  height: 13,
                  width: 18,
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: whiteTextStyle.copyWith(
                color: Color(0xff999999),
              ),
            ),
            TextFormField(
              style: whiteTextStyle,
              decoration: InputDecoration(
                hintText: 'Fahad Hafiz',
                hintStyle: whiteTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: blackColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: purpleColor),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: whiteTextStyle.copyWith(
                color: Color(0xff999999),
              ),
            ),
            TextFormField(
              style: whiteTextStyle,
              decoration: InputDecoration(
                hintText: 'hafizudin.d',
                hintStyle: whiteTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: blackColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: purpleColor),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: whiteTextStyle.copyWith(
                color: Color(0xff999999),
              ),
            ),
            TextFormField(
              style: whiteTextStyle,
              decoration: InputDecoration(
                hintText: 'fahadhafiz.dev@gmail.com',
                hintStyle: whiteTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: blackColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: purpleColor),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 30,
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/images/user_photo.png',
              height: 100,
              width: 100,
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor2,
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
