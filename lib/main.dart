import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/app_landing.dart';
import 'app/manager/controllers/manager_controller.dart';

//TODO: Save Theme persistent in local storage
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ManagerController());

  runApp(const Landing());
}
