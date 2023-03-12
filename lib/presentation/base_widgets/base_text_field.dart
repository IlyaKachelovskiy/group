import 'package:flutter/material.dart';
import 'package:group/core/constants/ui_kit_colors.dart';
import 'package:group/core/constants/ui_kit_dimen.dart';

class BaseTextField extends TextField {
  BaseTextField({
    super.key,
    required String hintText,
  }) : super(
          style: const TextStyle(fontSize: 16, color: Colors.black),
          decoration: InputDecoration(
            filled: true,
            fillColor: UiKitColors.mainGray,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: UiKitColors.mainGray),
              borderRadius: BorderRadius.circular(UiKitDimen.baseRadius),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: UiKitColors.mainGray),
              borderRadius: BorderRadius.circular(UiKitDimen.baseRadius),
            ),
          ),
        );
}
