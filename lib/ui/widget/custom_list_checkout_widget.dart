import 'package:flutter/material.dart';
import 'package:shamo_app/models/cart_model.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomListCheckout extends StatelessWidget {
  final CartModel cart;

  CustomListCheckout(this.cart);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.only(
        right: defaultMargin,
        left: defaultMargin,
        bottom: 12,
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
                image: NetworkImage(cart.product.galleries[0].url),
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
                  cart.product.name,
                  overflow: TextOverflow.clip,
                  style: whiteTextStyle.copyWith(fontWeight: semiBold),
                ),
                Text(
                  '\$${cart.product.price}',
                  overflow: TextOverflow.clip,
                  style: blueTextStyle,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              '${cart.quantity} Items',
              style: blackTextStyle.copyWith(
                color: greyColor,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
