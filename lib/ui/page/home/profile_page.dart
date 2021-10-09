import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/widget/custom_button_profile_widget.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: darkPurple,
        centerTitle: false,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(defaultMargin),
            child: Row(
              children: [
                Container(
                  height: 64,
                  width: 64,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/user_photo.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo, Hafiz',
                        style: whiteTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        '@hafizudin.d',
                        style: blackTextStyle.copyWith(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/icon_exit.png',
                  height: 20,
                  width: 20,
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 17,
              ),
            ),
            SizedBox(height: 16),
            CustomButtonProfile(
              text: 'Edit Profile',
              function: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/edit-profile', (route) => false);
              },
            ),
            CustomButtonProfile(text: 'Your Orders'),
            CustomButtonProfile(text: 'Help'),
            SizedBox(height: defaultMargin),
            Text(
              'General',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 17,
              ),
            ),
            SizedBox(height: 16),
            CustomButtonProfile(text: 'Privacy & Policy'),
            CustomButtonProfile(text: 'Term of Service'),
            CustomButtonProfile(text: 'Rate App'),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        content(),
      ],
    );
  }
}
