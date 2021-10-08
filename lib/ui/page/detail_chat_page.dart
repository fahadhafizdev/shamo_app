import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class DetailChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return PreferredSize(
        child: AppBar(
          backgroundColor: darkPurple,
          centerTitle: false,
          title: Row(
            children: [
              Image.asset(
                'assets/images/logo_round_online.png',
                height: 50,
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoe Store',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Online',
                    style: blackTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        preferredSize: Size.fromHeight(70),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        height: 45,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                padding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextFormField(
                  style: whiteTextStyle,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Typle Message...',
                    hintStyle: blackTextStyle,
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            Image.asset(
              'assets/images/btn_send.png',
              height: 45,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: mainColor,
      appBar: header(),
      // bottomNavigationBar: chatInput(),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: chatInput(),
          ),
        ],
      ),
    );
  }
}
