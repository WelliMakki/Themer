import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:themer/app/manager/controllers/manager_controller.dart';

class HomeController extends GetxController {
  RxBool isDark = false.obs;

  
  ThemeMode themeMode = ThemeMode.system;

  
  changeThemeToLight() {
  
    themeMode = ThemeMode.light;

    Get.find<ManagerController>().changeTheme(themeMode);

    isDark(false);
  }


  changeThemeToDark() {

    themeMode = ThemeMode.dark;


    Get.find<ManagerController>().changeTheme(themeMode);


    isDark(true);
  }
}
