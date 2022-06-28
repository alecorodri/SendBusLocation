import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendbuslocation_app/pages/home_page.dart';
import 'package:sendbuslocation_app/pages/second_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Send Bus Location',
      initialRoute: '/homepage',
      //darkTheme: ThemeData.dark(),
      getPages: [
        GetPage(
            name: '/homepage',
            page: () => const MyHomePage(
                  title: 'Send Bus Location',
                )),
        GetPage(name: '/secondpage', page: () => const SecondPage())
      ],
    );
  }
}
