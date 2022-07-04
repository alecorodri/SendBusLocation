import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:sendbuslocation_app/controllers/theme_controller.dart';
import 'package:sendbuslocation_app/pages/settings_page.dart';
import 'travel_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final themeController = Get.find<ThemeController>();
  int currentIndex = 0;
  bool _active = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: (() {
                  Get.isDarkMode
                      ? Get.changeThemeMode(ThemeMode.light)
                      : Get.changeThemeMode(ThemeMode.dark);
                }),
                icon: const Icon(Icons.dark_mode))
          ],
          title: const Center(child: Text('Send Bus Location')),
        ),
        body: currentIndex == 0 ? const TravelPage() : const SettingsPage(),
        floatingActionButton:
            currentIndex == 0 ? _floatingActionBottom() : null,
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: currentIndex,
          onTap: (i) => setState(() => currentIndex = i),
          items: [
            /// Location
            SalomonBottomBarItem(
              icon: const Icon(Icons.location_on_outlined),
              title: const Text("GPS"),
              selectedColor: Colors.orange,
            ),

            /// Settings
            SalomonBottomBarItem(
              icon: const Icon(Icons.settings),
              title: const Text("Settings"),
              selectedColor: Colors.teal,
            ),
          ],
        ));
  }

  FloatingActionButton _floatingActionBottom() {
    return FloatingActionButton(
        onPressed: () {
          setState(() {
            _active = !_active;
          });
        },
        backgroundColor: Colors.green,
        tooltip: 'Start Travel',
        child: _active
            ? const Icon(
                Icons.pause,
                size: 40,
              )
            : const Icon(
                Icons.play_arrow_rounded,
                size: 40,
              ));
  }
}
