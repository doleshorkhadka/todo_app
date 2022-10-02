import 'package:flutter/material.dart';
import 'package:todo_app/views/home_page.dart';
import 'package:todo_app/views/start_screen/start_screen.dart';

class RouteManager {
  static const homepage = '/';
  static const startpage = '/start';

  static Route<dynamic> routeSettings(RouteSettings settings) {
    switch (settings.name) {
      case (homepage):
        return MaterialPageRoute(builder: ((context) => HomeScreen()));

      case (startpage):
        return MaterialPageRoute(builder: ((context) => StartScreen()));

      default:
        throw const FormatException('Routes not found! Check the rutes');
    }
  }
}
