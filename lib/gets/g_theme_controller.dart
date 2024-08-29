import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  static ThemeController get to => Get.find();
  final Rx<ThemeMode> _themeMode = ThemeMode.dark.obs;

  ThemeMode get themeMode => _themeMode.value;
  set themeMode(ThemeMode mode) => _themeMode.value = mode;

  void toggleTheme() => themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
}
