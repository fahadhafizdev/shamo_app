import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomButtonProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Edit Profile',
              style: blackTextStyle.copyWith(fontSize: 15),
            ),
          ),
          Image.asset(
            'assets/images/icon_arrow.png',
            height: 6,
            width: 12,
          ),
        ],
      ),
    );
  }
}
