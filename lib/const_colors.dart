
import 'dart:ui';
import 'package:flutter/material.dart';

const Color mainColor = Color(0xFF69F0AE);
const Color pinkClr = Color(0xFFff4667);
const Color primary=Colors.green;
const Color darkSettings = Color(0xff6132e4);
const Color languageSettings = Color(0xffCB256C);

class ThemesApp {
  static final light = ThemeData(
    primaryColor:Color(0xFF69F0AE),
    backgroundColor: Colors.white,
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    primaryColor: Color(0xFF030338),
    backgroundColor: Color(0xFF030338),
    brightness: Brightness.dark,
  );
}