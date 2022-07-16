import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sendbuslocation_app/controllers/theme_controller.dart';
import 'package:sendbuslocation_app/routes/routes.dart';
import 'package:sendbuslocation_app/widgets/custom_themes.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: CustomThemes.light,
        darkTheme: CustomThemes.dark,
        themeMode: ThemeController().theme,
        title: 'Send Bus Location',
        initialRoute: '/homepage',
        getPages: Routes.routes);
  }
}
