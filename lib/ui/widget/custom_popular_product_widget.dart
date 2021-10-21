import 'package:flutter/material.dart';
import 'package:shamo_app/models/product_model.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/page/detail_product_page.dart';

class CustomPopularProduct extends StatelessWidget {
  final ProductModel products;
  CustomPopularProduct(this.products);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailProductPage(products),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 5,
          bottom: 16,
        ),
        margin: EdgeInsets.only(right: defaultMargin),
        height: 278,
        width: 215,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: 185,
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(products.galleries[0].url),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                bottom: 6,
              ),
              child: Text(
                products.category.name,
                style: greyTextStyle.copyWith(fontSize: 12),
                overflow: TextOverflow.clip,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  left: 20,
                  bottom: 6,
                ),
                child: Text(
                  products.name,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                '\$${products.price}',
                style: blueTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
