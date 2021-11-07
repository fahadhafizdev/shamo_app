import 'package:flutter/material.dart';
import 'package:shamo_app/models/product_model.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomChatBuble extends StatelessWidget {
  final String text;
  final bool isSender;
  final ProductModel product;

  CustomChatBuble({
    this.text,
    this.isSender,
    this.product,
  });

  @override
  Widget build(BuildContext context) {
    Widget productReview() {
      return Container(
        margin: EdgeInsets.only(bottom: 12),
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
        height: 155,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isSender ? 12 : 0),
            bottomLeft: Radius.circular(12),
            topRight: Radius.circular(isSender ? 0 : 12),
            bottomRight: Radius.circular(12),
          ),
          color: isSender ? purpleColor.withOpacity(0.2) : bgColor,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    product.galleries[0].url,
                    height: 70,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        product.name,
                        style: whiteTextStyle,
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8),
                  width: 119,
                  height: 41,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: btnStyle2,
                    child: Text('Add to Cart', style: purpleTextStyle),
                  ),
                ),
                Container(
                  height: 41,
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: btnStyle,
                    child: Text(
                      'Buy Now',
                      style: blackTextStyle.copyWith(
                        color: Color(0xff2B2844),
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          product is! UninitializedProductModel ? productReview() : SizedBox(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6),
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: isSender ? purpleColor.withOpacity(0.2) : bgColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(isSender ? 12 : 0),
                    bottomLeft: Radius.circular(12),
                    topRight: Radius.circular(isSender ? 0 : 12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Text(
                  text,
                  overflow: TextOverflow.clip,
                  style: whiteTextStyle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
