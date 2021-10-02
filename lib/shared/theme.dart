import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color mainColor = Color(0xff1F1D2B);
Color purpleColor = Color(0xff6C5ECF);
Color blackColor = Color(0xff504F5E);
Color whiteColor = Color(0xffF1F0F2);
Color blueColor = Color(0xff38ABBE);

TextStyle blackTextStyle = GoogleFonts.poppins(color: blackColor);

TextStyle whiteTextStyle = GoogleFonts.poppins(color: whiteColor);

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
