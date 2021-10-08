import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomChatBuble extends StatelessWidget {
  final String text;
  final bool isSender;

  CustomChatBuble({this.text, this.isSender});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Row(
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
                color: isSender
                    ? purpleColor.withOpacity(
                        0.2,
                      )
                    : bgColor,
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
    );
  }
}
