import 'package:flutter/material.dart';
import 'package:sendbuslocation_app/components/color_palette_componets.dart';

class CustomThemes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: ColorPalette.secundaryGreen,
    bottomAppBarColor: ColorPalette.secundaryGreen,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.green,
      textTheme: ButtonTextTheme.primary,
    ),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: ColorPalette.darkGreenBlue,
    bottomAppBarColor: Colors.green,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.green,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
