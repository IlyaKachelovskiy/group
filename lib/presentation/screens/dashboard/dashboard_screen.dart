import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:group/core/constants/ui_kit_colors.dart';
import 'package:group/presentation/routes/app_router.gr.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(context) {
    return AutoTabsScaffold(
      routes: const [
        MainScreen(),
        SearchScreen(),
        FavoritesScreen(),
        ProfileScreen(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          selectedItemColor: UiKitColors.black,
          unselectedItemColor: UiKitColors.gray,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Главная',
              icon: Icon(
                Icons.home_outlined,
              ),
              activeIcon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Поиск',
              icon: Icon(
                Icons.search_sharp,
              ),
              activeIcon: Icon(
                Icons.manage_search,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Избранное',
              icon: Icon(
                Icons.favorite_border,
              ),
              activeIcon: Icon(
                Icons.favorite,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Профиль',
              icon: Icon(
                Icons.person_outline,
              ),
              activeIcon: Icon(
                Icons.person,
              ),
            ),
          ],
        );
      },
    );
  }
}
