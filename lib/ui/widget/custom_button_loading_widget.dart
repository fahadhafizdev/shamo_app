import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomButtonLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: btnStyle,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 16,
              width: 16,
              margin: EdgeInsets.only(right: 12),
              child: CircularProgressIndicator(
                color: whiteColor,
                strokeWidth: 2.0,
              ),
            ),
            Text(
              'Loading',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
