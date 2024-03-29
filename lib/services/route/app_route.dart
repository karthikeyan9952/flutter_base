import 'package:flutter/material.dart';
import 'package:flutter_base/services/route/route_transition.dart';
import 'package:flutter_base/view/authentication/screens/login_screen.dart';
import 'package:flutter_base/view/authentication/screens/sign_up_screen.dart';
import 'package:flutter_base/view/authentication/screens/splash_screen.dart';
import 'package:flutter_base/view/cart/screens/cart_screen.dart';
import 'package:flutter_base/view/home/screens/home_screen.dart';
import 'package:flutter_base/view/main_screen.dart';
import 'package:flutter_base/view/profile/screens/profile_screen.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
bool isInitialized = false;
bool isLoggingIn = false;

// GoRouter configuration
final GoRouter router = GoRouter(
  initialLocation: Routes.home,
  navigatorKey: _rootNavigatorKey,
  routes: <RouteBase>[
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state, child) {
        return NoTransitionPage(
            child: MainScreen(
          child: child,
        ));
      },
      routes: [
        GoRoute(
          path: Routes.home,
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: HomeScreen());
          },
        ),
        GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: Routes.cart,
            pageBuilder: (context, state) {
              return const NoTransitionPage(child: CartScreen());
            }),
        GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: Routes.profile,
            pageBuilder: (context, state) {
              return const NoTransitionPage(child: ProfileScreen());
            }),
      ],
    ),
    GoRoute(
      path: Routes.splash,
      parentNavigatorKey: _rootNavigatorKey,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: Routes.login,
      parentNavigatorKey: _rootNavigatorKey,
      pageBuilder: (context, state) => CustomTransitionPage(
          child: const LoginScreen(),
          transitionsBuilder:
              RouteTransition(direction: TransitionDirection.left).slide),
    ),
    GoRoute(
      path: Routes.signUp,
      parentNavigatorKey: _rootNavigatorKey,
      pageBuilder: (context, state) => CustomTransitionPage(
          child: const SignUpScreen(),
          transitionsBuilder:
              RouteTransition(direction: TransitionDirection.left).slide),
    ),
  ],
  redirect: (context, state) {
    if (!isInitialized) {
      return Routes.splash;
    } else if (isLoggingIn) {
      return null;
    }
    return null;
  },
);
