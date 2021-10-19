import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app/models/user_model.dart';
import 'package:shamo_app/provider/auth_provider.dart';
import 'package:shamo_app/shared/theme.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

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
                hintText: '${user.name}',
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
                hintText: '@${user.username}',
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
                hintText: '${user.email}',
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
        margin: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 30,
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('${user.photoUrl}'),
                ),
              ),
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
