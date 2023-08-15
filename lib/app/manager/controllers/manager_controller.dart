import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManagerController extends GetxController {
  ThemeMode? themeMode;
  RxBool isDark = false.obs;
  ThemeMode changeTheme(ThemeMode mode) {
    Get.changeThemeMode(mode);
    isDark(Get.isDarkMode);
    log('IS DARK ? ${isDark.isTrue}');

    return mode;
  }
}
