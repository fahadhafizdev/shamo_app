import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app/models/product_model.dart';
import 'package:shamo_app/provider/wishlist_provider.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/page/detail_product_page.dart';

class CustomWishList extends StatelessWidget {
  final ProductModel products;
  CustomWishList(this.products);

  @override
  Widget build(BuildContext context) {
    WishListProvider wishListProvider = Provider.of<WishListProvider>(context);
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
        width: double.infinity,
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: 20,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 12),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(products.galleries[0].url),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    products.name,
                    overflow: TextOverflow.clip,
                    style: whiteTextStyle.copyWith(fontWeight: semiBold),
                  ),
                  Text('\$${products.price}', style: blueTextStyle),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                wishListProvider.setProducts(products);
              },
              child: Image.asset(
                'assets/images/icon_love_round_actived.png',
                height: 34,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
