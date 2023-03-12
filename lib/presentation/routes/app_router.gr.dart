// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../screens/dashboard/dashboard_screen.dart' as _i2;
import '../screens/favorites/favorites_screen.dart' as _i5;
import '../screens/main/main_screen.dart' as _i3;
import '../screens/profile/profile_screen.dart' as _i6;
import '../screens/search/search_screen.dart' as _i4;
import '../screens/splash/splash_screen.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    DashboardScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardScreen(),
      );
    },
    MainScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MainScreen(),
      );
    },
    SearchScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SearchScreen(),
      );
    },
    FavoritesScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.FavoritesScreen(),
      );
    },
    ProfileScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProfileScreen(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          SplashScreen.name,
          path: '/',
        ),
        _i7.RouteConfig(
          DashboardScreen.name,
          path: 'dashboard',
          children: [
            _i7.RouteConfig(
              MainScreen.name,
              path: 'main',
              parent: DashboardScreen.name,
            ),
            _i7.RouteConfig(
              SearchScreen.name,
              path: 'search',
              parent: DashboardScreen.name,
            ),
            _i7.RouteConfig(
              FavoritesScreen.name,
              path: 'favorites',
              parent: DashboardScreen.name,
            ),
            _i7.RouteConfig(
              ProfileScreen.name,
              path: 'profile',
              parent: DashboardScreen.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i7.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.DashboardScreen]
class DashboardScreen extends _i7.PageRouteInfo<void> {
  const DashboardScreen({List<_i7.PageRouteInfo>? children})
      : super(
          DashboardScreen.name,
          path: 'dashboard',
          initialChildren: children,
        );

  static const String name = 'DashboardScreen';
}

/// generated route for
/// [_i3.MainScreen]
class MainScreen extends _i7.PageRouteInfo<void> {
  const MainScreen()
      : super(
          MainScreen.name,
          path: 'main',
        );

  static const String name = 'MainScreen';
}

/// generated route for
/// [_i4.SearchScreen]
class SearchScreen extends _i7.PageRouteInfo<void> {
  const SearchScreen()
      : super(
          SearchScreen.name,
          path: 'search',
        );

  static const String name = 'SearchScreen';
}

/// generated route for
/// [_i5.FavoritesScreen]
class FavoritesScreen extends _i7.PageRouteInfo<void> {
  const FavoritesScreen()
      : super(
          FavoritesScreen.name,
          path: 'favorites',
        );

  static const String name = 'FavoritesScreen';
}

/// generated route for
/// [_i6.ProfileScreen]
class ProfileScreen extends _i7.PageRouteInfo<void> {
  const ProfileScreen()
      : super(
          ProfileScreen.name,
          path: 'profile',
        );

  static const String name = 'ProfileScreen';
}
