import 'package:flutter/material.dart';
import 'package:group/core/constants/app_theme.dart';
import 'package:group/presentation/screens/splash/splash_screen.dart';

class GroupApp extends StatelessWidget {
  const GroupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().defaultTheme,
      home: const SplashScreen(),
    );
  }
}
