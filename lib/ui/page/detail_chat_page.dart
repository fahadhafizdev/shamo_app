import 'package:flutter/material.dart';
import 'package:shamo_app/models/product_model.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/widget/custom_chat_buble_widget.dart';

class DetailChatPage extends StatefulWidget {
  ProductModel product;
  DetailChatPage(this.product);

  @override
  State<DetailChatPage> createState() => _DetailChatPageState();
}

class _DetailChatPageState extends State<DetailChatPage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return PreferredSize(
        child: AppBar(
          leading: Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
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

    Widget productReview() {
      return Container(
        height: 74,
        width: 225,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: purpleColor.withOpacity(
            0.2,
          ),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: purpleColor),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                widget.product.galleries[0].url,
                height: 54,
              ),
            ),
            SizedBox(width: 11),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: whiteTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '\$${widget.product.price}',
                    style: blueTextStyle.copyWith(fontWeight: medium),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  widget.product = UninitializedProductModel();
                });
              },
              child: Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/icon_refuse_round.png',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget chatList() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          CustomChatBuble(
            text:
                'Hi, This item is still availablessssssssssssssssssssssssssssssssssssss?',
            isSender: true,
            hasProduct: true,
          ),
          CustomChatBuble(
            text:
                'Hi, yes this item is availablesssssssssssssssssssssssssssssssssssssssssssssssssss',
            isSender: false,
          ),
        ],
      );
    }

    Widget chatInput() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              widget.product is UninitializedProductModel
                  ? SizedBox()
                  : productReview(),
              Row(
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
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: mainColor,
      appBar: header(),
      // bottomNavigationBar: chatInput(),
      body: Stack(
        children: [
          chatList(),
          chatInput(),
        ],
      ),
    );
  }
}
