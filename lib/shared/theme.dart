import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color mainColor = Color(0xff1F1D2B);
Color purpleColor = Color(0xff6C5ECF);
Color blackColor = Color(0xff504F5E);
Color whiteColor = Color(0xffF1F0F2);
Color blueColor = Color(0xff38ABBE);
Color darkGreyColor = Color(0xff2B2937);
Color bgColor = Color(0xff252836);
Color greyColor = Color(0xff999999);
Color darkPurple = Color(0xff1F1D2B);

double defaultMargin = 30.0;

TextStyle blackTextStyle = GoogleFonts.poppins(color: blackColor);

TextStyle whiteTextStyle = GoogleFonts.poppins(color: whiteColor);

TextStyle purpleTextStyle = GoogleFonts.poppins(color: purpleColor);

TextStyle greyTextStyle = GoogleFonts.poppins(color: greyColor);

TextStyle blueTextStyle = GoogleFonts.poppins(color: blueColor);

TextStyle darkPurpleTextStyle = GoogleFonts.poppins();

final ButtonStyle btnStyle = ElevatedButton.styleFrom(
  primary: purpleColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  ),
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
