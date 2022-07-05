import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendbuslocation_app/routes/routes.dart';
import 'package:sendbuslocation_app/widgets/custom_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
