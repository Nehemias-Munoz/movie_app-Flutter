import 'package:flutter/material.dart';

class AppTheme {
  static Color primaryColor = const Color.fromARGB(255, 63, 81, 181);
  static Color secondaryColor = const Color.fromARGB(255, 48, 63, 159);
  static Color backgroundColor = Colors.white;
  static ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme:
        AppBarTheme(color: primaryColor, elevation: .3, centerTitle: true),
  );
}
