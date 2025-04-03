import 'package:flutter/material.dart';

class NavigationAnimations {
  /// Building a slide animation
  static PageRouteBuilder buildSlideRoute({
    required Widget screen,
    required RouteSettings settings,
    Offset beginOffset = const Offset(1.0, 0.0),
    Duration duration = const Duration(milliseconds: 400),
  }) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: beginOffset,
            end: Offset.zero,
          ).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.easeOut,
          )),
          child: child,
        );
      },
      transitionDuration: duration,
    );
  }

  static PageRouteBuilder slideFromRight(
      Widget screen, RouteSettings settings) {
    return buildSlideRoute(
      screen: screen,
      settings: settings,
      beginOffset: const Offset(1.0, 0.0),
    );
  }

  static PageRouteBuilder slideFromLeft(
    Widget screen,
    RouteSettings settings,
  ) {
    return buildSlideRoute(
      screen: screen,
      settings: settings,
      beginOffset: const Offset(-1.0, 0.0),
    );
  }
}
