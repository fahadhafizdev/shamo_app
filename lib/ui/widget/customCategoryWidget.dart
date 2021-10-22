import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app/provider/status_category_provider.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomCategory extends StatelessWidget {
  final String text;

  CustomCategory({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    StatusCategoryProvider statusCategoryProvider =
        Provider.of<StatusCategoryProvider>(context);
    return GestureDetector(
      onTap: () {
        statusCategoryProvider.statusCategory = text;
        if (text == statusCategoryProvider.statusCategory) {
          print('category actived : ${statusCategoryProvider.statusCategory}');
        }
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 10,
        ),
        height: 40,
        decoration: BoxDecoration(
          color: (text == statusCategoryProvider.statusCategory)
              ? purpleColor
              : mainColor,
          borderRadius: BorderRadius.circular(12),
          border: (text == statusCategoryProvider.statusCategory)
              ? null
              : Border.all(color: blackColor),
        ),
        child: Text(
          text,
          style: (text == statusCategoryProvider.statusCategory)
              ? whiteTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 13,
                )
              : blackTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 13,
                ),
        ),
      ),
    );
  }
}
