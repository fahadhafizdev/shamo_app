import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app/provider/cart_provider.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/widget/custom_list_checkout_widget.dart';
import 'package:shamo_app/ui/widget/custom_payment_summary.widget.dart';

class CheckoutDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

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
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/checkout-success', (route) => false);
                },
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
          //NOTE: : LIST ITEM
          Column(
            children: cartProvider.carts
                .map((items) => CustomListCheckout(items))
                .toList(),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Store Location',
                          style: greyTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 1),
                        Text(
                          'Adidas Core',
                          style: whiteTextStyle.copyWith(fontWeight: medium),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Your Address',
                          style: greyTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 1),
                        Text(
                          'Marsemoon',
                          style: whiteTextStyle.copyWith(fontWeight: medium),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(defaultMargin),
            width: double.infinity,
            decoration: BoxDecoration(
              color: bgColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment Summary',
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 1),
                CustomPaymentSummary(
                  name: 'Product Quantity',
                  value: '${cartProvider.totalItems()} Items',
                ),
                CustomPaymentSummary(
                  name: 'Product Price',
                  value: '\$${cartProvider.totalPrice()}',
                ),
                CustomPaymentSummary(
                  name: 'Shipping',
                  value: 'free',
                ),
                Divider(
                  color: laneColor2,
                  thickness: 1.0,
                ),
                SizedBox(height: 10),
                CustomPaymentSummary(
                  name: 'Total',
                  value: '\$${cartProvider.totalPrice()}',
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
