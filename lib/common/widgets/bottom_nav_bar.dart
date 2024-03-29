import 'package:flutter/material.dart';
import 'package:flutter_base/services/route/routes.dart';
import 'package:flutter_base/theme/pallete.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<String> routes = [Routes.home, Routes.cart, Routes.profile];

  List<NavigationDestination> destinations = [
    const NavigationDestination(
      selectedIcon: Icon(Icons.home, color: Colors.white),
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    const NavigationDestination(
      selectedIcon: Icon(Icons.shopping_cart, color: Colors.white),
      icon: Icon(
        Icons.shopping_cart_outlined,
      ),
      label: 'Cart',
    ),
    const NavigationDestination(
      selectedIcon: Icon(Icons.person, color: Colors.white),
      icon: Icon(
        Icons.person_outline,
      ),
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) => context.go(routes[index]),
      selectedIndex: currentIndex,
      indicatorColor: Pallete.primary,
      destinations: destinations,
    );
  }

  int get currentIndex {
    int index = 0;
    String currentRoute = GoRouterState.of(context).uri.path;
    for (String route in routes) {
      bool isCurrent = currentRoute.contains(route);
      if (!isCurrent) continue;
      index = routes.indexOf(route);
    }
    return index;
  }
}
