import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Style {
  static int _primary = 0xFFE9349E;
  static Color primary = Color(_primary);
  static MaterialColor primarySwatch = MaterialColor(
    _primary,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFDECF6),
      200: Color(0xFFF8BEE0),
      300: Color(0xFFF390CA),
      400: Color(0xFFEE62B4),
      500: Color(0xFFE9349E),
      600: Color(0xFFD31785),
      700: Color(0xFFA51268),
      800: Color(0xFF770D4B),
      900: Color(0xFF49082E),
    },
  );

  static MaterialColor secondarySwatch = Colors.grey;

  static double get width => Get.width;
  static double get height => Get.height;
  static double parentAllows = double.infinity;
}
