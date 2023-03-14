import 'package:flutter/material.dart';
import 'package:group/core/constants/ui_kit_colors.dart';

/// TODO: сделать нормально стили
class UiKitTextStyle {
  static TextStyle get splashScreenTitle => const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        fontFamily: 'Mulish-Bold',
        color: UiKitColors.black,
      );

  static TextStyle get pageMainTitle => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Mulish-Bold',
        color: UiKitColors.black,
      );

  static TextStyle get title => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontFamily: 'Mulish-Bold',
        color: UiKitColors.black,
      );

  static TextStyle get description => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        fontFamily: 'Mulish',
        color: UiKitColors.gray,
      );

  static TextStyle get descriptionBold => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        fontFamily: 'Mulish-Bold',
        color: UiKitColors.gray,
      );
}
