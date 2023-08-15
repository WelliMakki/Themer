import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Hi, I can change application theme',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
                onPressed: () {
                  //use this statement to toggle theme
                  //OPTIONS (Dark, Light)
                  //All customized

                  if (controller.isDark.isFalse) {
                    //Toggle Dark Theme
                    controller.changeThemeToDark();
                  } else {
                    //Toggle Light Theme
                    controller.changeThemeToLight();
                  }
                },
                child: const Center(
                  child: Text('Try me'),
                )),
          )
        ],
      ),
    );
  }
}
