import 'package:flutter/material.dart';
import 'package:group/core/constants/ui_kit_colors.dart';

class AppTheme {
  ThemeData get defaultTheme => ThemeData(
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: UiKitColors.black),
        scaffoldBackgroundColor: UiKitColors.white,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: UiKitColors.white,
          type: BottomNavigationBarType.fixed,
        ),
      );
}
