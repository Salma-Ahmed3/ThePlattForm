import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextStyles {
  static  TextStyle bold40 = TextStyle(
    fontFamily: GoogleFonts.getFont( 'Alexandria').fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 40,
  );
  static  TextStyle semiBold18 = TextStyle(
    fontFamily: GoogleFonts.getFont( 'Alexandria').fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
  static  TextStyle regular12 = TextStyle(
    fontFamily: GoogleFonts.getFont( 'Alexandria').fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );
  static  TextStyle regular16 = TextStyle(
    fontFamily: GoogleFonts.getFont( 'Alexandria').fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );
  static  TextStyle regular14 = TextStyle(
    fontFamily: GoogleFonts.getFont( 'Alexandria').fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Colors.black,
  );
  static  TextStyle regular18 = TextStyle(
    fontFamily: GoogleFonts.getFont( 'Alexandria').fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 18,
  );
  static  TextStyle regular20 = TextStyle(
    fontFamily: GoogleFonts.getFont( 'Alexandria').fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 20,
  );

  static  TextStyle regular10 = TextStyle(
    fontFamily: GoogleFonts.getFont( 'Alexandria').fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 10,
  );
}