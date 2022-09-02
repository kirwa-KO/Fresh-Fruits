import 'dart:ui';

import 'package:flutter/material.dart';

const mainColor = Color.fromRGBO(230, 127, 30, 1);
const grayColor = Color.fromRGBO(177, 177, 177, 1);
const lightGrayColor = Color.fromRGBO(95, 95, 95, 1);
const lightDarkColor = Color.fromRGBO(56, 65, 68, 1);
const yellowColor = Color.fromRGBO(254, 197, 75, 1);
const pinkColor = Color.fromRGBO(255, 46, 108, 1);
const whiteColor = Color.fromRGBO(242, 242, 242, 1);
const lightGrayColor2 = Color.fromRGBO(149, 154, 155, 1);

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}