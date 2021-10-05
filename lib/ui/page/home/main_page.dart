import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget cardButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: blueColor,
        child: Image.asset(
          'assets/images/icon_shope.png',
          height: 22,
          width: 20,
        ),
      );
    }

    Widget customBottomNav() {
      return BottomNavigationBar(
        backgroundColor: bgColor,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_home.png',
              width: 21,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_chat.png',
              width: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_love.png',
              width: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_profile.png',
              width: 20,
            ),
            label: '',
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: mainColor,
      floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: Center(
        child: Text(
          'Main Page',
        ),
      ),
    );
  }
}
