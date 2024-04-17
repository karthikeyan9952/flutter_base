import 'package:flutter/material.dart';
import 'package:flutter_base/services/route/routes.dart';
import 'package:flutter_base/theme/palette.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatefulWidget {
  /// Creates a Material 3 Navigation Bar component.
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  /// The list of route destinations
  List<String> routes = [Routes.home, Routes.cart, Routes.profile];

  /// The list of destinations (usually [NavigationDestination]s) in this [NavigationBar].
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
      indicatorColor: Palette.primary,
      destinations: destinations,
    );
  }

  /// The current index of [NavigationBar] based on the [routes]
  int get currentIndex {
    /// Initialzing a integer value
    int index = 0;

    /// Fetch the current route
    String currentRoute = GoRouterState.of(context).uri.path;
    for (String route in routes) {
      /// Check if the current route is in the navigation bar's one of the route
      bool isCurrent = currentRoute.contains(route);
      if (!isCurrent) continue;

      /// Get the index of current route from routes list
      index = routes.indexOf(route);
    }
    return index;
  }
}
