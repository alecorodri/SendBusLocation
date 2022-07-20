import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:sendbuslocation_app/controllers/location_controller.dart';
import 'package:sendbuslocation_app/controllers/theme_controller.dart';
//import 'package:sendbuslocation_app/pages/settings_page.dart';
import 'location_page.dart';
import 'travel_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  bool _active = false;
  final _ctrl = Get.put(LocationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: (() {
                  ThemeController().switchTheme();
                }),
                icon: const Icon(Icons.dark_mode))
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 40,
              ),
              Center(child: Text('Send Bus Location')),
            ],
          ),
        ),
        body: currentIndex == 0 ? const LocationPage() : const TravelPage(),
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
              selectedColor: const Color(0xFFFF9800),
            ),

            /// Settings
            SalomonBottomBarItem(
              icon: const Icon(Icons.settings),
              title: const Text("Settings"),
              selectedColor: const Color(0xFF009688),
            ),
          ],
        ));
  }

  FloatingActionButton _floatingActionBottom() {
    return FloatingActionButton(
        onPressed: () {
          setState(() {
            _active = !_active;
            _ctrl.isactive.value = _active;
            _ctrl.getLocation();
          });
        },
        backgroundColor: const Color(0xFF4CAF50),
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
