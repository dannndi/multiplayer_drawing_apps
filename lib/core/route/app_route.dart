import 'package:flutter/material.dart';
import 'package:flutter_skeleton/feature/draw/presentation/drawing_screen.dart';
import 'package:flutter_skeleton/feature/home/presentation/home_screen.dart';
import 'package:flutter_skeleton/feature/room/presentation/room_screen.dart';
import '/core/route/app_route_name.dart';

class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
          settings: settings,
        );

      case AppRouteName.listRoom:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const RoomScreen(),
          transitionDuration: const Duration(milliseconds: 400),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case AppRouteName.drawingRoom:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const DrawingRoomScreen(),
          transitionDuration: const Duration(milliseconds: 400),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
    }

    return null;
  }
}
