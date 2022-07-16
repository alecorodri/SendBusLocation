import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int? currentIndex = 0;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: 0,
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
    );
  }
}
