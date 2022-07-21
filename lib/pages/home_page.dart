import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:sendbuslocation_app/controllers/home_page_controller.dart';
import 'package:sendbuslocation_app/controllers/location_controller.dart';
import 'package:sendbuslocation_app/controllers/theme_controller.dart';
import 'package:sendbuslocation_app/pages/settings_page.dart';
import '../components/color_palette_componets.dart';
import 'travel_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  bool _active = false;
  //final _controller = Get.put(HomePageController());
  final _locatCtrl = Get.put(LocationController());
  final settingPage = const SettingsPage();
  final travelPage = const TravelPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorPalette.teal,
          actions: [
            IconButton(
                onPressed: (() {
                  ThemeController().switchTheme();
                }),
                icon: const Icon(Icons.brightness_medium_outlined)),
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
        body: SafeArea(
            child: IndexedStack(
          index: _currentIndex,
          children: [travelPage, settingPage],
        )),
        floatingActionButton:
            _currentIndex == 0 ? _floatingActionBottom() : null,
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
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
            _locatCtrl.isactive.value = _active;
            _locatCtrl.getLocation();
          });
        },
        backgroundColor: ColorPalette.teal,
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
