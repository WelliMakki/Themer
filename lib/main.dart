import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/core/themes/theme.dart';
import 'app/manager/controllers/manager_controller.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ManagerController());

  runApp(const Landing());
}

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
      themeMode: controller.themeMode ?? ThemeMode.system,
    );
  }
}
