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
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(StringProvider.splashScreenTitle, style: UiKitTextStyle.title),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 40),
              child: Center(child: Image.asset(AssetProvider.splashScreen)),
            ),
            const CircularProgressIndicator(color: UiKitColors.red),
          ],
        ),
      ),
    );
  }
}
