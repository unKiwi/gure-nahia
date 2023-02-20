import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Style {
  static const primaryColor = Color(0xFF536B18);

  static int contentMaxWidth = 776;
  static int smallScreenWidth = 450;

  static double get contentPadding {
    double availableSpace = Get.width - contentMaxWidth;
    return availableSpace > 0 ? availableSpace / 2 : 0;
  }

  static ThemeData defaultTheme = ThemeData(
    primarySwatch: MaterialColor(
      primaryColor.value,
      const {
        50: primaryColor,
        100: primaryColor,
        200: primaryColor,
        300: primaryColor,
        400: primaryColor,
        500: primaryColor,
        600: primaryColor,
        700: primaryColor,
        800: primaryColor,
        900: primaryColor,
      },
    ),
    fontFamily: 'Poppins',
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: primaryColor,
      ),
    ),
  );

  static ThemeData easyReadingTheme = ThemeData(
    primarySwatch: MaterialColor(
      primaryColor.value,
      const {
        50: primaryColor,
        100: primaryColor,
        200: primaryColor,
        300: primaryColor,
        400: primaryColor,
        500: primaryColor,
        600: primaryColor,
        700: primaryColor,
        800: primaryColor,
        900: primaryColor,
      },
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: primaryColor,
      ),
    ),
  );
}
