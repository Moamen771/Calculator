import 'package:calculator/themes/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    colorScheme: ColorScheme.light(
  brightness: Brightness.light,
  surface: lightBackgroundColor,
  primary: lightPrimaryColor,
  secondary: lightSecondaryColor,
  tertiary: Colors.black,
));

ThemeData darkMode = ThemeData(
    colorScheme: ColorScheme.dark(
  brightness: Brightness.dark,
  surface: darkBackgroundColor,
  primary: darkPrimaryColor,
  secondary: darkSecondaryColor,
  tertiary: Colors.white,
));
