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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../screens/dashboard/dashboard_screen.dart' as _i1;
import '../screens/favorites/favorites_screen.dart' as _i4;
import '../screens/main/main_screen.dart' as _i2;
import '../screens/profile/profile_screen.dart' as _i5;
import '../screens/search/search_screen.dart' as _i3;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    DashboardScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardScreen(),
      );
    },
    MainScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MainScreen(),
      );
    },
    SearchScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SearchScreen(),
      );
    },
    FavoritesScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.FavoritesScreen(),
      );
    },
    ProfileScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileScreen(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          DashboardScreen.name,
          path: '/',
          children: [
            _i6.RouteConfig(
              MainScreen.name,
              path: 'main',
              parent: DashboardScreen.name,
            ),
            _i6.RouteConfig(
              SearchScreen.name,
              path: 'search',
              parent: DashboardScreen.name,
            ),
            _i6.RouteConfig(
              FavoritesScreen.name,
              path: 'favorites',
              parent: DashboardScreen.name,
            ),
            _i6.RouteConfig(
              ProfileScreen.name,
              path: 'profile',
              parent: DashboardScreen.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.DashboardScreen]
class DashboardScreen extends _i6.PageRouteInfo<void> {
  const DashboardScreen({List<_i6.PageRouteInfo>? children})
      : super(
          DashboardScreen.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'DashboardScreen';
}

/// generated route for
/// [_i2.MainScreen]
class MainScreen extends _i6.PageRouteInfo<void> {
  const MainScreen()
      : super(
          MainScreen.name,
          path: 'main',
        );

  static const String name = 'MainScreen';
}

/// generated route for
/// [_i3.SearchScreen]
class SearchScreen extends _i6.PageRouteInfo<void> {
  const SearchScreen()
      : super(
          SearchScreen.name,
          path: 'search',
        );

  static const String name = 'SearchScreen';
}

/// generated route for
/// [_i4.FavoritesScreen]
class FavoritesScreen extends _i6.PageRouteInfo<void> {
  const FavoritesScreen()
      : super(
          FavoritesScreen.name,
          path: 'favorites',
        );

  static const String name = 'FavoritesScreen';
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileScreen extends _i6.PageRouteInfo<void> {
  const ProfileScreen()
      : super(
          ProfileScreen.name,
          path: 'profile',
        );

  static const String name = 'ProfileScreen';
}
