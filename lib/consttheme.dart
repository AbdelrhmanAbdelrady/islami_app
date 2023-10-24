import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeConst {
  static Color primcolor=Color(0xffB7935F);
  static Color darkcolor=Color(0xff242424);
  static ThemeData ligthTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      bodySmall: GoogleFonts.elMessiri(
          fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xff242424)),
      bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25, fontWeight: FontWeight.w700, color: Color(0xffffffff)),
      bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xff242424)),
    ),
    appBarTheme: AppBarTheme(
        color: Colors.transparent, elevation: 0.0, centerTitle: true),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor:darkcolor,
        unselectedItemColor: Colors.white,
        backgroundColor:primcolor ),
  );
  static ThemeData darkTheme = ThemeData(scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      bodySmall: GoogleFonts.elMessiri(
          fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xff242424)),
      bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25, fontWeight: FontWeight.w700, color: Color(0xffffffff)),
      bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xff242424)),
    ),
    appBarTheme: AppBarTheme(
        color: Colors.transparent, elevation: 0.0, centerTitle: true),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
        selectedItemColor:darkcolor,
        unselectedItemColor: Colors.white,
        backgroundColor:primcolor ),);
}
