import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomChatBuble extends StatelessWidget {
  final String text;
  final bool isSender;

  CustomChatBuble({this.text, this.isSender});

  @override
  Widget build(BuildContext context) {
    Widget productReview() {
      return Container(
        width: 230,
        height: 155,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            topLeft: Radius.circular(12),
          ),
          color: isSender ? purpleColor.withOpacity(0.2) : bgColor,
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          productReview(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6),
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                    color: isSender ? purpleColor.withOpacity(0.2) : bgColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(isSender ? 12 : 0),
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(isSender ? 0 : 12),
                      bottomRight: Radius.circular(12),
                    )),
                child: Text(
                  text,
                  overflow: TextOverflow.clip,
                  style: whiteTextStyle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
