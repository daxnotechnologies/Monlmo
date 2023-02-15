import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineSmall: GoogleFonts.poppins(color: Color(0xff1b2d3b), fontSize: 10),
    headlineMedium: GoogleFonts.poppins(color: Color(0xff1b2d3b), fontSize: 20),
    headlineLarge: GoogleFonts.poppins(
        color: Color(0xff1b2d3b), fontSize: 30, fontWeight: FontWeight.bold),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineSmall: GoogleFonts.poppins(color: Color(0xffbcfaf0), fontSize: 17),
    headlineMedium: GoogleFonts.poppins(
        color: Color(0xffbcfaf0), fontSize: 20, fontWeight: FontWeight.bold),
    headlineLarge: GoogleFonts.poppins(color: Color(0xffbcfaf0), fontSize: 30),
  );
}
