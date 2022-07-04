import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendbuslocation_app/pages/home_page.dart';
import 'package:sendbuslocation_app/pages/settings_page.dart';

import 'controllers/theme_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  var themeController = ThemeController();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          themeController.isActive.value ? ThemeData.light() : ThemeData.dark(),

      //ThemeData(
      //   primarySwatch: Colors.green,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      title: 'Send Bus Location',
      initialRoute: '/homepage',
      //darkTheme: ThemeData.dark(),
      getPages: [
        GetPage(
            name: '/homepage',
            page: () => const MyHomePage(
                  title: 'Send Bus Location',
                )),
        GetPage(name: '/settingPage', page: () => const SettingsPage())
      ],
    );
  }
}
