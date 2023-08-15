import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/themes/theme.dart';
import 'manager/controllers/manager_controller.dart';
import 'routes/app_pages.dart';

class Landing extends GetView<ManagerController> {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,

      //To be fetched from local storage
      themeMode: controller.themeMode ?? ThemeMode.system,
    );
  }
}
