import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:group/core/constants/asset_provider.dart';
import 'package:group/core/constants/string_provider.dart';
import 'package:group/core/constants/ui_kit_colors.dart';
import 'package:group/core/constants/ui_kit_text_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    _navigateToMainScreen();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(StringProvider.splashScreenTitle,
                style: UiKitTextStyle.splashScreenTitle),
            const Spacer(),
            Center(child: Image.asset(AssetProvider.splashScreen)),
            const Spacer(),

            /// добавил лоадер от себя, типа все ок и просто идет загрузка
            const CircularProgressIndicator(color: UiKitColors.red),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  /// Переход на Гланую страницу после паузы в 3 сек
  Future<void> _navigateToMainScreen() async {
    await Future.delayed(const Duration(seconds: 1));
    if (context.mounted) {
      context.router.pushNamed('/profile');
    }
  }
}
