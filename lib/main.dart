import 'package:flutter/material.dart';
import 'package:shamo_app/ui/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shamo App',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
      },
      initialRoute: '/',
    );
  }
}
