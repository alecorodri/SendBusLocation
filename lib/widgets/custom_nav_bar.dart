import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class CustomNavBar {
  //var index;

  Widget customNavBar({@required var index}) {
    return SalomonBottomBar(currentIndex: index,
        // onTap: (i) =>  => index = i),
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
          )
        ]);
  }
}
