import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app/provider/page_provider.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/page/home/chat_page.dart';
import 'package:shamo_app/ui/page/home/home_page.dart';
import 'package:shamo_app/ui/page/home/profile_page.dart';
import 'package:shamo_app/ui/page/home/wishlist_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    Widget cardButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/detail-cart');
        },
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
          notchMargin: 12,
          child: BottomNavigationBar(
            currentIndex: pageProvider.currentIndex,
            onTap: (value) {
              print(value);
              pageProvider.setCurrentIndex = value;
            },
            backgroundColor: bgColor,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/images/icon_home.png',
                    width: 21,
                    color:
                        (pageProvider.currentIndex == 0) ? purpleColor : null,
                  ),
                ),
                label: '',
                tooltip: 'home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/images/icon_chat.png',
                    width: 20,
                    color:
                        (pageProvider.currentIndex == 1) ? purpleColor : null,
                  ),
                ),
                label: '',
                tooltip: 'chat',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/images/icon_love.png',
                    width: 20,
                    color:
                        (pageProvider.currentIndex == 2) ? purpleColor : null,
                  ),
                ),
                label: '',
                tooltip: 'wishlist',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/images/icon_profile.png',
                    width: 18,
                    color:
                        (pageProvider.currentIndex == 3) ? purpleColor : null,
                  ),
                ),
                label: '',
                tooltip: 'profil',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (pageProvider.currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return ChatPage();
        case 2:
          return WishListPage();
        case 3:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: (pageProvider.currentIndex == 0) ? darkPurple : bgColor2,
      floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
