import 'package:flutter/material.dart';
import 'package:shamo_app/models/product_model.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/page/detail_product_page.dart';

class CustomNewProduct extends StatelessWidget {
  final ProductModel products;
  CustomNewProduct(this.products);

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
        height: 120,
        width: 290,
        margin: EdgeInsets.only(bottom: defaultMargin),
        child: Row(
          children: [
            Container(
              height: 120,
              width: 120,
              margin: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: whiteColor,
                image: DecorationImage(
                  image: NetworkImage(products.galleries[0].url),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  products.category.name,
                  style: greyTextStyle.copyWith(fontSize: 12),
                ),
                Container(
                  width: 151,
                  child: Text(
                    products.name,
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                    overflow: TextOverflow.clip,
                  ),
                ),
                Text(
                  '\$${products.price}',
                  style: blueTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
