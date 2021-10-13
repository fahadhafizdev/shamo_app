import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int countItems = 0;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return PreferredSize(
        child: AppBar(
          leading: Icon(
            Icons.arrow_back_ios,
            size: 18,
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
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            margin: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
              top: defaultMargin,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: bgColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    //NOTE: IMAGES
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/new_shoes1.png'),
                        ),
                        borderRadius: BorderRadius.circular(15),
                        color: whiteColor,
                      ),
                    ),
                    //NOTE: TEXTS
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Terrex Urban Low',
                            overflow: TextOverflow.clip,
                            style:
                                whiteTextStyle.copyWith(fontWeight: semiBold),
                          ),
                          Text(
                            '\$143,98',
                            overflow: TextOverflow.clip,
                            style: blueTextStyle,
                          ),
                        ],
                      ),
                    ),
                    //NOTE: TOOL ADD ITEMS
                    Container(
                      margin: EdgeInsets.only(left: 12, top: 3),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                countItems++;
                              });
                            },
                            child: Image.asset(
                              'assets/images/icon_plus.png',
                              height: 16,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            '$countItems',
                            style: whiteTextStyle.copyWith(
                              fontWeight: medium,
                            ),
                          ),
                          SizedBox(height: 3),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (countItems == 0) {
                                  print('null count items');
                                } else if (countItems > 0) {
                                  countItems--;
                                  print('remove success');
                                }
                              });
                            },
                            child: Image.asset(
                              'assets/images/icon_min.png',
                              height: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //NOTE : BTN REMOVE
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 12,
                        right: 4,
                      ),
                      height: 12,
                      width: 10,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/icon_sampah.png'),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      child: Text(
                        'Remove',
                        style: blackTextStyle.copyWith(
                          color: redColor,
                          fontWeight: light,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
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
                    '\$287,96',
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
                onPressed: () {},
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
      bottomNavigationBar: customBottomnNav(),
      body: content(),
    );
  }
}
