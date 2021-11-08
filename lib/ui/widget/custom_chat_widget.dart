import 'package:flutter/material.dart';
import 'package:shamo_app/models/product_model.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/page/detail_chat_page.dart';

class CustomChatWidget extends StatelessWidget {
  String message;
  CustomChatWidget(this.message);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailChatPage(UninitializedProductModel()),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 12,
        ),
        width: double.infinity,
        height: 67,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xff2B2939),
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 54,
              width: 54,
              margin: EdgeInsets.only(
                right: 12,
                bottom: 12,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/logo_round.png',
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Text(
                    'Shoe Store',
                    style: whiteTextStyle.copyWith(
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    message,
                    style: blackTextStyle.copyWith(
                      fontWeight: light,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Text(
                'Now',
                style: blackTextStyle.copyWith(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
