import 'package:flutter/material.dart';
import 'package:group/core/constants/ui_kit_colors.dart';

class UiKitTextStyle {
  static TextStyle get splashScreenTitle => const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: 'Mulish',
    color: UiKitColors.black,
  );

  static TextStyle get pageTitle => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontFamily: 'Mulish',
        color: UiKitColors.black,
      );

  static TextStyle get description => const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    fontFamily: 'Mulish',
    color: UiKitColors.gray,
  );

}
