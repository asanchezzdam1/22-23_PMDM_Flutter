import 'package:flutter/material.dart';

class CustomLightTheme {
  static const Color primary = Colors.red;
  static const Color secondary = Colors.lightGreen;

  static final ThemeData themeData = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(backgroundColor: primary),
      scaffoldBackgroundColor: secondary);
}
