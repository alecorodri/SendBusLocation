import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendbuslocation_app/routes/routes.dart';
import 'package:sendbuslocation_app/widgets/custom_themes.dart';

import 'controllers/theme_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: CustomThemes.primaryTheme,
        darkTheme: CustomThemes.darkTheme,
        title: 'Send Bus Location',
        initialRoute: '/homepage',
        getPages: Routes.routes);
  }
}
