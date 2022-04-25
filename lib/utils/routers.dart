import 'package:flutter/material.dart';

import '../screens/buttom_nav.dart';
import '../screens/homescreen/home_screen.dart';
import '../screens/profilescreen/addnews.dart';
import '../screens/splashscreen.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case BottomNavigator.routeName:
        return MaterialPageRoute(builder: (_) => const BottomNavigator());

      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => SplashScreen());

      case AddNewsPage.routeName:
        return MaterialPageRoute(builder: (_) => const AddNewsPage());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}