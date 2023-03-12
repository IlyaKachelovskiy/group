import 'package:flutter/material.dart';
import 'package:group/core/constants/app_theme.dart';
import 'package:group/presentation/routes/app_router.gr.dart';

class GroupApp extends StatelessWidget {
  GroupApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: AppTheme().defaultTheme,
    );
  }
}
