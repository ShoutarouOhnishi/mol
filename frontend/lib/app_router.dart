import 'package:flutter/material.dart';
import 'package:frontend/views/initial_view.dart';
import 'package:frontend/views/match_make_view.dart';
import 'package:frontend/views/room_view.dart';
import 'package:frontend/views/splash_view.dart';

class AppRouter {
  static const splash = '/splash';
  static const initial = '/initial';
  static const matchMake = '/match_make';
  static const room = '/room';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return null;
      case splash:
        return MaterialPageRoute(builder: (context) => const SplashView());
      case initial:
        return MaterialPageRoute(builder: (context) => const InitialView());
      case matchMake:
        return MaterialPageRoute(builder: (context) => MatchMakeView());
      // FIXME: 実装
      // case room:
      //   return MaterialPageRoute(builder: (context) => RoomView());
      default:
        return MaterialPageRoute(builder: (context) => const InitialView());
    }
  }
}
