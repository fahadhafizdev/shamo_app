import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

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
            currentIndex: currentIndex,
            onTap: (value) {
              print(value);
              setState(() {
                currentIndex = value;
              });
            },
            backgroundColor: bgColor,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/icon_home.png',
                  width: 21,
                  color: (currentIndex == 0) ? purpleColor : null,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/icon_chat.png',
                  width: 20,
                  color: (currentIndex == 1) ? purpleColor : null,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/icon_love.png',
                  width: 20,
                  color: (currentIndex == 2) ? purpleColor : null,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/icon_profile.png',
                  width: 18,
                  color: (currentIndex == 3) ? purpleColor : null,
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
