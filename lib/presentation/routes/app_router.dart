import 'package:auto_route/auto_route.dart';
import 'package:group/presentation/screens/profile/profile_screen.dart';
import 'package:group/presentation/screens/splash/splash_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true, path: '/'),
    AutoRoute(page: ProfileScreen, path: '/profile'),
  ],
)
class $AppRouter {}
