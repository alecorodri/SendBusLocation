import 'package:get/get.dart';
import 'package:sendbuslocation_app/blindings/home_page_blindings.dart';

import '../blindings/location_blindings.dart';
import '../pages/home_page.dart';
import '../pages/location_page.dart';
import '../pages/settings_page.dart';

class Routes {
  static var routes = [
    GetPage(
        name: '/homepage',
        page: () => const MyHomePage(),
        bindings: [LocationBinding(), HomePageBinding()]),
    GetPage(name: '/settingPage', page: () => const SettingsPage()),
    GetPage(
        name: '/locationPage',
        page: () => const LocationPage(),
        binding: LocationBinding()),
  ];
}
