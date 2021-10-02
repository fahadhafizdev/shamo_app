import 'package:flutter/material.dart';
import 'package:shamo_app/ui/page/sign_in_page.dart';
import 'package:shamo_app/ui/page/sign_up_page.dart';
import 'package:shamo_app/ui/page/splash_page.dart';

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
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
      },
      initialRoute: '/sign-in',
    );
  }
}
