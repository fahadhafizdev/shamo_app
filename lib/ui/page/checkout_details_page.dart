import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/widget/custom_list_checkout_widget.dart';

class CheckoutDetailsPage extends StatelessWidget {
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
            'Checkout Details',
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18,
            ),
          ),
        ),
        preferredSize: Size.fromHeight(70),
      );
    }

    Widget customBottomnNav() {
      return Container(
        height: 130,
        child: Column(
          children: [
            Divider(
              thickness: 0.5,
              color: laneColor,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              margin: EdgeInsets.symmetric(vertical: defaultMargin),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: btnStyle,
                onPressed: () {},
                child: Text(
                  'Checkout Now',
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget listItem() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 30,
              left: 30,
              bottom: 12,
              right: 30,
            ),
            child: Text(
              'List Items',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16,
              ),
            ),
          ),
          CustomListCheckout(
            name: 'Terrex Urban Low',
            price: 143.98,
            amount: 2,
            imageUrl: 'assets/images/shoes1.png',
          ),
          CustomListCheckout(
            name: 'Terrex Urban Low',
            price: 143.98,
            amount: 3,
            imageUrl: 'assets/images/shoes2.png',
          ),

          //NOTE: ADDRESS DETAIL
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.all(20),
            height: 186,
            width: double.infinity,
            decoration: BoxDecoration(
              color: bgColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address Details',
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/icon_storeloc.png',
                          height: 40,
                        ),
                        Image.asset(
                          'assets/images/icon_line.png',
                          height: 30,
                        ),
                        Image.asset(
                          'assets/images/icon_loc.png',
                          width: 40,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor2,
      bottomNavigationBar: customBottomnNav(),
      appBar: header(),
      body: ListView(
        children: [
          listItem(),
        ],
      ),
    );
  }
}
