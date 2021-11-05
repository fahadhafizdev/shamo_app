import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app/models/product_model.dart';
import 'package:shamo_app/provider/cart_provider.dart';
import 'package:shamo_app/provider/product_provider.dart';
import 'package:shamo_app/provider/wishlist_provider.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shamo_app/ui/page/detail_chat_page.dart';
import 'package:shamo_app/ui/widget/custom_image_widget.dart';

class DetailProductPage extends StatefulWidget {
  final ProductModel productModel;
  DetailProductPage(this.productModel);
  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  final List images = [
    'assets/images/shoes1_1.png',
    'assets/images/shoes1_2.png',
    'assets/images/shoes1_3.png',
  ];

  final List imageUrl = [
    'assets/images/new_shoes1.png',
    'assets/images/new_shoes2.png',
    'assets/images/new_shoes3.png',
    'assets/images/new_shoes4.png',
    'assets/images/new_shoes5.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    ProductProvider productProvider = Provider.of<ProductProvider>(context);
    WishListProvider wishListProvider = Provider.of<WishListProvider>(context);
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    bool isWishList = wishListProvider.isWishList(widget.productModel);

    Future<void> showSuccessDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => Container(
          width: MediaQuery.of(context).size.width - (2 * defaultMargin),
          child: AlertDialog(
            backgroundColor: bgColor2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        Icons.close,
                        color: whiteColor,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/icon_checkList.png',
                    height: 100,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Hurray :)',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Item added successfully',
                    style: blackTextStyle.copyWith(
                      color: Color(0xff999999),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: 44,
                    width: 154,
                    child: ElevatedButton(
                      style: btnStyle,
                      onPressed: () {
                        Navigator.pushNamed(context, '/detail-cart');
                      },
                      child: Text(
                        'View My Cart',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget indicators(int index) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 2),
        width: (index == currentIndex) ? 16 : 4,
        height: 4,
        decoration: BoxDecoration(
          color: (index == currentIndex) ? purpleColor : Color(0xffC4C4C4),
          borderRadius: BorderRadius.circular(10),
        ),
      );
    }

    Widget header() {
      int index = -1;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: defaultMargin,
              left: defaultMargin,
              top: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: darkPurple,
                    size: 24.0,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/main-page', (route) => false);
                  },
                  child: Icon(
                    Icons.shopping_bag_rounded,
                    color: darkPurple,
                    size: 29.0,
                  ),
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: widget.productModel.galleries
                .map(
                  (e) => Image.network(
                    e.url,
                    width: double.infinity,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                  print('$reason : $currentIndex');
                });
              },
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.map((e) {
                print(index);
                index++;

                return indicators(index);
              }).toList()),
        ],
      );
    }

    Widget content() {
      int indexListShoes = -1;

      return Container(
        margin: EdgeInsets.only(top: 17),
        width: double.infinity,
        decoration: BoxDecoration(
          color: darkPurple,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //NOTE: HEADER
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //NOTE:NAME
                      Text(
                        widget.productModel.name,
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      //NOTE:CATEGORY
                      Text(
                        widget.productModel.category.name,
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                          color: Color(0xff999999),
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    //NOTE: WISHTLIST
                    onTap: () {
                      isWishList =
                          wishListProvider.isWishList(widget.productModel);

                      wishListProvider.setProducts(widget.productModel);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: Duration(seconds: 1),
                          content: !isWishList
                              ? Text(
                                  'Has been added to the Whitelist',
                                  textAlign: TextAlign.center,
                                )
                              : Text(
                                  'Has been removed from the Whitelist',
                                  textAlign: TextAlign.center,
                                ),
                          backgroundColor: !isWishList ? blueColor : Colors.red,
                        ),
                      );
                    },
                    child: Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(isWishList
                              ? 'assets/images/icon_love_round_actived.png'
                              : 'assets/images/icon_love_round_nonactived.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //NOTE:PRICE
            Container(
              margin: EdgeInsets.only(
                top: 20,
                bottom: 30,
                right: 30,
                left: 30,
              ),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: darkGreyColor,
                borderRadius: BorderRadius.circular(4),
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Price starts from', style: whiteTextStyle),
                  Text(
                    '\$${widget.productModel.price}',
                    style: blueTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            //NOTE:DESC
            Padding(
              padding: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                bottom: 12,
              ),
              child: Text(
                'Description',
                style: whiteTextStyle.copyWith(fontWeight: medium),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Text(
                widget.productModel.description,
                overflow: TextOverflow.clip,
                textAlign: TextAlign.left,
                style: blackTextStyle.copyWith(fontWeight: light),
              ),
            ),
            //NOTE: SHOES List
            Padding(
              padding: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                top: 30,
                bottom: 12,
              ),
              child: Text(
                'Familiar Shoes',
                style: whiteTextStyle.copyWith(fontWeight: medium),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: productProvider.products.map((imageUrl) {
                  indexListShoes++;

                  if (indexListShoes == 0 &&
                      (imageUrl.category.name ==
                          widget.productModel.category.name)) {
                    print(widget.productModel.category.name);
                    return Container(
                        margin: EdgeInsets.only(left: 14),
                        child:
                            CustomImage(imageUrl: imageUrl.galleries[0].url));
                  }

                  print(indexListShoes);
                  return CustomImage(
                      imageUrl: (imageUrl.category.name ==
                              widget.productModel.category.name)
                          ? imageUrl.galleries[0].url
                          : 'null');
                }).toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                top: defaultMargin,
                bottom: 12,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailChatPage(widget.productModel),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 16),
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/btn_chat.png'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 54,
                      child: ElevatedButton(
                        onPressed: () {
                          cartProvider.addCart(widget.productModel);
                          showSuccessDialog();
                        },
                        style: btnStyle,
                        child: Text(
                          'Add to Cart',
                          style: whiteTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
