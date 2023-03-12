import 'package:auto_route/auto_route.dart';
import 'package:group/presentation/screens/dashboard/dashboard_screen.dart';
import 'package:group/presentation/screens/favorites/favorites_screen.dart';
import 'package:group/presentation/screens/main/main_screen.dart';
import 'package:group/presentation/screens/profile/profile_screen.dart';
import 'package:group/presentation/screens/search/search_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: DashboardScreen,
      children: [
        AutoRoute(page: MainScreen, path: 'main'),
        AutoRoute(page: SearchScreen, path: 'search'),
        AutoRoute(page: FavoritesScreen, path: 'favorites'),
        AutoRoute(page: ProfileScreen, path: 'profile'),
      ],
    ),
  ],
)
class $AppRouter {}
