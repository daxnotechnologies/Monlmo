import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineSmall: GoogleFonts.poppins(color: Color(0xff1b2d3b)),
    headlineMedium: GoogleFonts.poppins(color: Color(0xff1b2d3b)),
    headlineLarge: GoogleFonts.poppins(color: Color(0xff1b2d3b)),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineSmall: GoogleFonts.poppins(color: Color(0xffbcfaf0)),
    headlineMedium: GoogleFonts.poppins(color: Color(0xffbcfaf0)),
    headlineLarge: GoogleFonts.poppins(color: Color(0xffbcfaf0)),
  );
}
