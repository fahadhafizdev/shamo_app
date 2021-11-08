import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app/models/user_model.dart';
import 'package:shamo_app/provider/auth_provider.dart';
import 'package:shamo_app/provider/page_provider.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/widget/custom_button_profile_widget.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    PageProvider pageProvider = Provider.of<PageProvider>(context);
    UserModel user = authProvider.user;

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
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: NetworkImage('${user.photoUrl}'),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo, ${user.name}',
                        style: whiteTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        '@${user.username}',
                        style: blackTextStyle.copyWith(fontSize: 16),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/', (route) => false);
                    pageProvider.setCurrentIndex = 0;
                  },
                  child: Image.asset(
                    'assets/images/icon_exit.png',
                    height: 20,
                    width: 20,
                  ),
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
                Navigator.pushNamed(context, '/edit-profile');
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
