import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app/provider/category_provider.dart';
import 'package:shamo_app/provider/product_provider.dart';
import 'package:shamo_app/shared/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // Timer(Duration(seconds: 4), () {
    //   Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
    // });
    getInit();
    super.initState();
  }

  getInit() async {
    // await Provider.of<ProductProvider>(context, listen: false).getProducts();
    // Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
    Timer(Duration(seconds: 4), () async {
      await Provider.of<ProductProvider>(context, listen: false).getProducts();
      await Provider.of<CategoryProvider>(context, listen: false).getCategory();
      Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
    });
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
