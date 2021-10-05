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
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          notchMargin: 10,
          child: BottomNavigationBar(
            backgroundColor: bgColor,
            type: BottomNavigationBarType.fixed,
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
                  width: 18,
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: mainColor,
      floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(height: 80, child: customBottomNav()),
      body: Center(
        child: Text(
          'Main Page',
        ),
      ),
    );
  }
}
