import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
    });
    super.initState();
  }

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
