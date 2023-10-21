import 'package:flutter/material.dart';
import 'package:frontend/presentation/page/initial_page.dart';
import 'package:frontend/presentation/page/match_make_page.dart';
import 'package:frontend/presentation/page/room_page.dart';
import 'package:frontend/presentation/page/splash_page.dart';

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
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case initial:
        return MaterialPageRoute(builder: (context) => const InitialPage());
      case matchMake:
        return MaterialPageRoute(builder: (context) => MatchMakePage());
      // FIXME: 実装
      // case room:
      //   return MaterialPageRoute(builder: (context) => RoomPage());
      default:
        return MaterialPageRoute(builder: (context) => const InitialPage());
    }
  }
}
