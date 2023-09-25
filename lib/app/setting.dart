import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static const primaryColor = Color(0xff1D4A96);
  static const gray = Color(0xff8391A1);
  static const grey1 = Color(0xffF7F8F9);
  static const grey2 = Color(0xffE8ECF4);
  static const black = Colors.black;


  static TextStyle black32n400 = GoogleFonts.inter(
    fontSize: 32,
    color: Colors.black,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );

  static TextStyle black18n700 = GoogleFonts.inter(
    fontSize: 18,
    color: Colors.black,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  );
  static TextStyle black16n300 = GoogleFonts.inter(
    fontSize: 16,
    color: Colors.black,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w300,
  );

  static TextStyle black16n400 = GoogleFonts.inter(
    fontSize: 16,
    color: Colors.black,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );

  static TextStyle white16n600 = GoogleFonts.inter(
    fontSize: 16,
    color: Colors.white,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  );
  static TextStyle black16n600 = GoogleFonts.inter(
    fontSize: 16,
    color: Colors.black,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  );

  static TextStyle black30n700 = GoogleFonts.inter(
    fontSize: 30,
    color: Colors.black,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  );
  static TextStyle black16n700 = GoogleFonts.inter(
    fontSize: 16,
    color: Colors.black,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  );

  static TextStyle gray15n500 = GoogleFonts.inter(
    fontSize: 15,
    color: const Color(0xff8391A1),
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );

    static TextStyle green14n600 = GoogleFonts.inter(
    fontSize: 14,
    color: const Color(0xff35C2C1),
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  );
}
