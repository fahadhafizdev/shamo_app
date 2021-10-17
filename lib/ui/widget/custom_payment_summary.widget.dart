import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme.dart';

class CustomPaymentSummary extends StatelessWidget {
  final String name;
  final String value;

  CustomPaymentSummary({this.name, this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: (name != 'Total') ? 13 : 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: (name != 'Total')
                ? greyTextStyle.copyWith(
                    fontSize: 12,
                  )
                : blueTextStyle.copyWith(fontWeight: semiBold),
          ),
          Text(
            '$value',
            style: (name != 'Total')
                ? whiteTextStyle.copyWith(
                    fontWeight: medium,
                  )
                : blueTextStyle.copyWith(fontWeight: semiBold),
          )
        ],
      ),
    );
  }
}
