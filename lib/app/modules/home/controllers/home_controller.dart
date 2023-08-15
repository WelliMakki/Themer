import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:themer/app/manager/controllers/manager_controller.dart';

class HomeController extends GetxController {
  RxBool isDark = false.obs;

  //Instance of themeMode
  ThemeMode themeMode = ThemeMode.system;

  //Change Theme to Light
  changeThemeToLight() {
    //Set [themeMode] to light
    themeMode = ThemeMode.light;

    //trigger theme mode to Theme Manager so it can be applied
    Get.find<ManagerController>().changeTheme(themeMode);

    //set isDark variable to false
    isDark(false);
  }

  //Change Theme to Dark
  changeThemeToDark() {
    //Set [themeMode] to dark
    themeMode = ThemeMode.dark;

    //trigger theme mode to Theme Manager so it can be applied
    Get.find<ManagerController>().changeTheme(themeMode);

    //set isDark variable to true
    isDark(true);
  }
}
