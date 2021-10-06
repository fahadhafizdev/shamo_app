import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/widget/customCategoryWidget.dart';
import 'package:shamo_app/ui/widget/custom_popular_product_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget headerContent() {
      return Container(
        margin: EdgeInsets.all(defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo, Hafiz',
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  '@hafizudin.d',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/images/user_photo.png',
              height: 54,
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
          children: [
            CustomCategory(
              text: 'All Shoes',
              isActive: true,
            ),
            CustomCategory(
              text: 'Running',
              isActive: false,
            ),
            CustomCategory(
              text: 'Training',
              isActive: false,
            ),
            CustomCategory(
              text: 'Basketball',
              isActive: false,
            ),
            CustomCategory(
              text: 'School',
              isActive: false,
            ),
          ],
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
        ),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CustomPopularProduct(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        headerContent(),
        categoryContent(),
        titleProduct('Popular Products'),
        listPopularProduct(),
      ],
    );
  }
}
