import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static final light = ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
      ),
      dividerColor: Color(0xffc4c4ce),
      primaryColor: Colors.black,
      textTheme: GoogleFonts.nunitoTextTheme(
          TextTheme(bodyLarge: TextStyle(color: Colors.black), bodyMedium: TextStyle(color: Colors.black))),
      cardColor: Color(0xfff0f0f0));

  static final dark = ThemeData(
      cardColor: Color(0xff323232),
      brightness: Brightness.dark,
      dividerColor: Color(0xff8a8a8a),
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
      ),
      textTheme: GoogleFonts.nunitoTextTheme(
        TextTheme(bodyLarge: TextStyle(color: Colors.white), bodyMedium: TextStyle(color: Colors.white)),
      ));
}
