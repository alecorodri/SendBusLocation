import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:sendbuslocation_app/controllers/theme_controller.dart';
import 'package:sendbuslocation_app/pages/settings_page.dart';
import '../models/user.dart';
import 'travel_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

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
          title: Center(child: Text(widget.title)),
        ),
        body: currentIndex == 0 ? const TravelPage() : const SettingsPage(),
        floatingActionButton: currentIndex == 0
            ? FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _active = !_active;
                  });
                },
                tooltip: 'Start Travel',
                child: _active
                    ? const Icon(
                        Icons.pause,
                        size: 40,
                      )
                    : const Icon(
                        Icons.play_arrow_rounded,
                        size: 40,
                      ))
            : null,
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
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class NoInfo extends StatelessWidget {
  const NoInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No hay usuario selecionado'),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final User user;

  const InformacionUsuario({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          ListTile(title: Text('Nombre: ${user.name}')),
          ListTile(title: Text('Date: ${user.date}')),
          const Text('Profesiones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          const ListTile(title: Text('Profesion 1')),
          const ListTile(title: Text('Profesion 1')),
          const ListTile(title: Text('Profesion 1')),
        ],
      ),
    );
  }
}
