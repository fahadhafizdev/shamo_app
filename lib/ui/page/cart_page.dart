import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app/provider/cart_provider.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/widget/custom_cart_card_widget.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int countItems = 0;

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    Widget header() {
      return PreferredSize(
        child: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/main-page', (route) => false);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 18,
            ),
          ),
          backgroundColor: darkPurple,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Your Cart',
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18,
            ),
          ),
        ),
        preferredSize: Size.fromHeight(70),
      );
    }

    Widget contentNoCart() {
      return Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: 20,
                top: 180,
              ),
              height: 69,
              width: 79,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/icon_cart.png',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Text(
                'Opss! Your Cart is Empty',
                textAlign: TextAlign.center,
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
            ),
            Text(
              'Let\'s find your favorite shoes',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                color: Color(0xff999999),
              ),
            ),
            Container(
              height: 44,
              width: MediaQuery.of(context).size.width - (112 + 111),
              margin: EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                style: btnStyle,
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/main-page', (route) => false);
                },
                child: Text(
                  'Explore Store',
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        children: cartProvider.carts
            .map(
              (items) => CustomCartCard(items),
            )
            .toList(),
      );
    }

    Widget customBottomnNav() {
      return Container(
        height: 165,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: whiteTextStyle,
                  ),
                  Text(
                    '\$${cartProvider.totalPrice()}',
                    style: blueTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Divider(
              thickness: 0.5,
              color: laneColor,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 50,
              child: ElevatedButton(
                style: btnStyle,
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout-detail');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue to Checkout',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 16,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      backgroundColor: bgColor2,
      bottomNavigationBar: (cartProvider.carts.length == 0)
          ? SizedBox(height: 100)
          : customBottomnNav(),
      body: (cartProvider.carts.length == 0) ? contentNoCart() : content(),
    );
  }
}
