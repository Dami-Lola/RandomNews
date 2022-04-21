import 'package:flutter/material.dart';

import '../screens/buttom_nav.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case BottomNavigator.routeName:
        return MaterialPageRoute(builder: (_) => BottomNavigator());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}