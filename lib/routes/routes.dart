import 'package:get/get.dart';

import '../pages/home_page.dart';
import '../pages/settings_page.dart';

class Routes {
  static var routes = [
    GetPage(name: '/homepage', page: () => const MyHomePage()),
    GetPage(name: '/settingPage', page: () => const SettingsPage())
  ];
}
