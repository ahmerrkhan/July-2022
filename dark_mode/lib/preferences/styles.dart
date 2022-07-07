import 'package:flutter/material.dart';

class Style {
  static ThemeData themeData(bool isDarkTheme) {
    return ThemeData(
      primaryColor: isDarkTheme ? Colors.black : Colors.blue,
      scaffoldBackgroundColor:
          isDarkTheme ? const Color(0xFF222222) : Colors.white,
      appBarTheme: isDarkTheme
          ? const AppBarTheme(
              color: Colors.black, titleTextStyle: TextStyle(color: Colors.red))
          : const AppBarTheme(
              color: Colors.green,
              titleTextStyle: TextStyle(color: Colors.green)),
      textTheme: isDarkTheme
          ? const TextTheme(
              bodyMedium: TextStyle(color: Colors.blue, fontSize: 30))
          : const TextTheme(bodyMedium: TextStyle(color: Colors.yellow)),
    );
  }
}
