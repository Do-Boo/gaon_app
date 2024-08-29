import 'package:flutter/material.dart';

enum AppTheme {
  Light,
  Dark,
}

final appThemeData = {
  AppTheme.Light: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    hintColor: const Color.fromARGB(255, 16, 16, 16),
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
    ),
    fontFamily: "GowunDodum",
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color.fromARGB(255, 16, 16, 16),
    ),
  ),
  AppTheme.Dark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color.fromARGB(255, 16, 16, 16),
    scaffoldBackgroundColor: Colors.black,
    hintColor: Colors.white,
    colorScheme: const ColorScheme.dark(
      primary: Color.fromARGB(255, 16, 16, 16),
    ),
    fontFamily: "GowunDodum",
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color.fromARGB(255, 207, 207, 207),
    ),
  ),
};
