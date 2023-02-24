import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Style {
  static const primaryColor = Color(0xFF536B18);

  static int contentMaxWidth = 950;
  static int smallScreenWidth = 450;

  static double get contentPadding {
    double availableSpace = Get.width - contentMaxWidth;
    return availableSpace > 0 ? availableSpace / 2 : 0;
  }

  static bool get isBurgerAppBar => Get.width <= 900;

  static ThemeData defaultTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: primaryColor,
    fontFamily: 'Poppins',
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: primaryColor,
      ),
    ),
  );

  static ThemeData easyReadingTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: primaryColor,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: primaryColor,
      ),
    ),
  );
}
