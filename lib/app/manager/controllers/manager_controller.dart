import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManagerController extends GetxController {
  ThemeMode? themeMode;
  ThemeMode? changeTheme(ThemeMode mode) {
    themeMode = mode;
    Get.changeThemeMode(mode);
    return themeMode;
  }
}
