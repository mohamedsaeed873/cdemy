import 'package:flutter/material.dart';

class AppColor {
  static const Color gray = Color(0xff8e8e8e);
  static const Color primary=Colors.green;
  static const Color black = Colors.black;


  static const Color mainColor = Color(0xFF69F0AE);
  static const Color pinkClr = Color(0xFFff4667);
  static const Color darkSettings = Colors.black;
  static const Color languageSettings = Color(0xffCB256C);
}
class ThemesApp {
  static final light = ThemeData(
    primaryColor:Color(0xFF69F0AE),
    backgroundColor: Colors.white,
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    primaryColor: Colors.black,
    backgroundColor: Colors.black,
    brightness: Brightness.dark,
  );
}