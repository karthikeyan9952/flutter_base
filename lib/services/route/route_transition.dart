import 'package:flutter/material.dart';

class RouteTransition {
  TransitionDirection direction;
  RouteTransition({required this.direction});

  Widget slide(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      position: animation.drive(
        Tween(
          begin: switch (direction) {
            TransitionDirection.left => const Offset(1.0, 0),
            TransitionDirection.right => const Offset(-1.0, 0),
            TransitionDirection.up => const Offset(0, 1.0),
            _ => const Offset(0, -1.0),
          },
          end: Offset.zero,
        ).chain(
          CurveTween(curve: Curves.ease),
        ),
      ),
      child: child,
    );
  }
}

enum TransitionDirection { left, right, up, down }
