import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          height: 150,
          width: 130,
        ),
      ),
    );
  }
}
