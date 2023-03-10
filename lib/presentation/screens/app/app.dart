import 'package:flutter/material.dart';
import 'package:group/presentation/screens/splash/splash_screen.dart';

class GroupApp extends StatelessWidget {
  const GroupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: AppTheme().defaultTheme,
      home: SplashScreen(),
    );
  }
}
