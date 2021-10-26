import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app/models/cart_model.dart';
import 'package:shamo_app/provider/cart_provider.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomCartCard extends StatelessWidget {
  final CartModel cartModel;
  CustomCartCard(this.cartModel);

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return Container(
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
                    image: NetworkImage(cartModel.product.galleries[0].url),
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
                      cartModel.product.name,
                      overflow: TextOverflow.clip,
                      style: whiteTextStyle.copyWith(fontWeight: semiBold),
                    ),
                    Text(
                      '\$${cartModel.product.price}',
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
                        cartProvider.addQuantity(cartModel.id);
                      },
                      child: Image.asset(
                        'assets/images/icon_plus.png',
                        height: 16,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      '${cartModel.quantity}',
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(height: 3),
                    GestureDetector(
                      onTap: () {
                        cartProvider.reduceQuantity(cartModel.id);
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
          GestureDetector(
            onTap: () {
              cartProvider.removeAt(cartModel.id);
            },
            child: Row(
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
          ),
        ],
      ),
    );
  }
}
