import 'package:flutter/material.dart';
import 'package:todo_app/text_screen/home_page.dart';

class RouteManager {
  static const homepage = '/';

  static Route<dynamic> routeSettings(RouteSettings settings) {
    switch (settings.name) {
      case (homepage):
        return MaterialPageRoute(builder: ((context) => HomeScreen()));

      default:
        throw const FormatException('Routes not found! Check the rutes');
    }
  }
}
