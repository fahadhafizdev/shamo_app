import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app/provider/auth_provider.dart';
import 'package:shamo_app/provider/product_provider.dart';
import 'package:shamo_app/ui/page/cart_page.dart';
import 'package:shamo_app/ui/page/checkout_details_page.dart';
import 'package:shamo_app/ui/page/checkout_success_page.dart';
import 'package:shamo_app/ui/page/detail_chat_page.dart';
import 'package:shamo_app/ui/page/detail_product_page.dart';
import 'package:shamo_app/ui/page/edit_profil_page.dart';
import 'package:shamo_app/ui/page/home/main_page.dart';
import 'package:shamo_app/ui/page/sign_in_page.dart';
import 'package:shamo_app/ui/page/sign_up_page.dart';
import 'package:shamo_app/ui/page/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Shamo App',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/main-page': (context) => MainPage(),
          '/detail-chat-page': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/detail-cart': (context) => CartPage(),
          '/checkout-detail': (context) => CheckoutDetailsPage(),
          '/checkout-success': (context) => CheckoutSuccess(),
        },
        initialRoute: '/',
      ),
    );
  }
}
