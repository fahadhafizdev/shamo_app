import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app/models/user_model.dart';

import 'package:shamo_app/provider/auth_provider.dart';
import 'package:shamo_app/provider/category_provider.dart';
import 'package:shamo_app/provider/product_provider.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/widget/customCategoryWidget.dart';
import 'package:shamo_app/ui/widget/custom_new_product_widget.dart';
import 'package:shamo_app/ui/widget/custom_popular_product_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    ProductProvider productProvider = Provider.of<ProductProvider>(context);
    CategoryProvider categoryProvider = Provider.of<CategoryProvider>(context);

    Widget headerContent() {
      return Container(
        margin: EdgeInsets.all(defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, ${user.name}',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    '@${user.username}',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                '${user.photoUrl}',
                height: 54,
              ),
            ),
          ],
        ),
      );
    }

    Widget categoryContent() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          bottom: defaultMargin,
        ),
        height: 40,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: categoryProvider.category
              .map(
                (itemCategory) => CustomCategory(
                  text: itemCategory.name,
                ),
              )
              .toList(),
        ),
      );
    }

    Widget titleProduct(String title) {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          bottom: 14,
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 22,
          ),
        ),
      );
    }

    Widget listPopularProduct() {
      return Container(
        height: 278,
        margin: EdgeInsets.only(
          left: defaultMargin,
          bottom: defaultMargin,
        ),
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: productProvider.products
                .map((item) => CustomPopularProduct(item))
                .toList()),
      );
    }

    Widget listNewProduct() {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin),
        width: 290,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: productProvider.products
              .map((item) => CustomNewProduct(item))
              .toList(),
        ),
      );
    }

    return ListView(
      children: [
        headerContent(),
        categoryContent(),
        titleProduct('Popular Products'),
        listPopularProduct(),
        titleProduct('New Arrivals'),
        listNewProduct(),
      ],
    );
  }
}
