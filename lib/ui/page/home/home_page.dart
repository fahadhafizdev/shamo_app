import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app/models/user_model.dart';

import 'package:shamo_app/provider/auth_provider.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/widget/customCategoryWidget.dart';
import 'package:shamo_app/ui/widget/custom_new_product_widget.dart';
import 'package:shamo_app/ui/widget/custom_popular_product_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

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
          bottom: defaultMargin,
        ),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CustomPopularProduct(
              name: 'COURT VISION 2.0',
              imageUrl: 'assets/images/shoes1.png',
              textCategory: 'Hiking',
              price: 58.67,
            ),
            CustomPopularProduct(
              name: 'SL 20 SHOES',
              imageUrl: 'assets/images/shoes2.png',
              textCategory: 'Hiking',
              price: 123.82,
            ),
            CustomPopularProduct(
              name: 'TERREX URBAN LOW',
              imageUrl: 'assets/images/shoes3.png',
              textCategory: 'Hiking',
              price: 143.98,
            ),
          ],
        ),
      );
    }

    Widget listNewProduct() {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin),
        width: 290,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomNewProduct(
              name: 'Predator 20.3 Firm Ground',
              textCategory: 'Football',
              imageUrl: 'assets/images/new_shoes1.png',
              price: 68.47,
            ),
            CustomNewProduct(
              name: 'Ultra 4D 5 Shoes',
              textCategory: 'Football',
              imageUrl: 'assets/images/new_shoes2.png',
              price: 68.47,
            ),
            CustomNewProduct(
              name: 'Court Vision 2.0 Shoes',
              textCategory: 'Football',
              imageUrl: 'assets/images/new_shoes3.png',
              price: 68.47,
            ),
            CustomNewProduct(
              name: 'LEGO® SPORT SHOES',
              textCategory: 'Football',
              imageUrl: 'assets/images/new_shoes4.png',
              price: 68.47,
            ),
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
        titleProduct('New Arrivals'),
        listNewProduct(),
      ],
    );
  }
}
