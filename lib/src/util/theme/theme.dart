import 'package:flutter/material.dart';
import 'package:monlmo/src/util/theme/text_theme.dart';

class MAppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xffebfffd),
    brightness: Brightness.light,
    primarySwatch: const MaterialColor(0xFFADF8ED, {
      50: Color(0xFFFBFFFF),
      100: Color(0xFFF7FFFE),
      200: Color(0xFFEBFEFB),
      300: Color(0xFFDEFDF8),
      400: Color(0xFFC6FBF3),
      500: Color(0xFFADF8ED),
      600: Color(0xFF9ADDD3),
      700: Color(0xFF68958F),
      800: Color(0xFF4E706B),
      900: Color(0xFF334845),
    }),
    textTheme: MTextTheme.lightTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFADF8ED),
          foregroundColor: Color.fromARGB(255, 0, 0, 0),
          primary: Color.fromARGB(255, 255, 255, 255),
          padding: EdgeInsets.all(20)),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xff1b2d3b),
    brightness: Brightness.light,
    primarySwatch: const MaterialColor(0xFF12595B, {
      50: Color(0xFFF4F7F7),
      100: Color(0xFFE8EFEF),
      200: Color(0xFFC4D6D6),
      300: Color(0xFF9EBBBC),
      400: Color(0xFF5A8B8D),
      500: Color(0xFF12595B),
      600: Color(0xFF115051),
      700: Color(0xFF0B3637),
      800: Color(0xFF092929),
      900: Color(0xFF061A1B),
    }),
    textTheme: MTextTheme.darkTextTheme,
  );
}
