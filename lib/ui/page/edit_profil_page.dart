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
                Image.asset(
                  'assets/images/icon_refuse.png',
                  height: 14,
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

    return Scaffold(
      backgroundColor: bgColor2,
      body: ListView(
        children: [
          header(),
        ],
      ),
    );
  }
}
