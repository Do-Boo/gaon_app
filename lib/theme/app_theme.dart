import 'package:flutter/material.dart';

enum AppTheme {
  Light,
  Dark,
}

final appThemeData = {
  AppTheme.Light: ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color.fromARGB(255, 207, 207, 207),
    scaffoldBackgroundColor: const Color.fromARGB(255, 207, 207, 207),
    hintColor: const Color.fromARGB(255, 16, 16, 16),
    colorScheme: const ColorScheme.light(
      primary: Color.fromARGB(255, 207, 207, 207),
    ),
    fontFamily: 'NotoSans',
    // fontFamily: "GowunDodum",
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color.fromARGB(255, 16, 16, 16),
    ),
  ),
  AppTheme.Dark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color.fromARGB(255, 16, 16, 16),
    scaffoldBackgroundColor: Colors.black,
    hintColor: const Color.fromARGB(255, 207, 207, 207),
    colorScheme: const ColorScheme.dark(
      primary: Color.fromARGB(255, 16, 16, 16),
    ),
    fontFamily: 'NotoSans',
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color.fromARGB(255, 207, 207, 207),
    ),
  ),
};
