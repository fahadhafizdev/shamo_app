import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/icon_headset.png',
                ),
              ),
            ),
          ),
          Text(
            'Opss no message yet?',
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'You have never done a transaction',
            style: blackTextStyle,
          ),
          SizedBox(height: 20),
          Container(
            height: 44,
            width: 152,
            child: ElevatedButton(
              style: btnStyle,
              onPressed: () {},
              child: Text(
                'Explore Store',
              ),
            ),
          )
        ],
      ),
    );
  }
}
