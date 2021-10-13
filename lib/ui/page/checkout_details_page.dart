import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

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
          Container(
            height: 100,
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 12,
            ),
            decoration: BoxDecoration(
              color: bgColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 12),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    image: DecorationImage(
                      image: AssetImage('assets/images/shoes1.png'),
                    ),
                    borderRadius: BorderRadius.circular(12),
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
                        style: whiteTextStyle.copyWith(fontWeight: semiBold),
                      ),
                      Text(
                        '\$143,98',
                        overflow: TextOverflow.clip,
                        style: blueTextStyle,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    '2 Items',
                    style: blackTextStyle.copyWith(
                      color: greyColor,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
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
