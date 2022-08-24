import 'package:flutter/material.dart';

import '../text_screen/textscreen.dart';

class RouteManager {
  static const homepage = '/';

  static Route<dynamic> routeSettings(RouteSettings settings) {
    switch (settings.name) {
      case (homepage):
        return MaterialPageRoute(builder: ((context) => HomePage()));

      default:
        throw const FormatException('Routes not found! Check the rutes');
    }
  }
}
