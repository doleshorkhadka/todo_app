import 'package:flutter/material.dart';
import 'package:todo_app/routes/navigation_routes.dart';
import 'package:todo_app/views/custompainter.dart';
import 'package:todo_app/views/start_screen/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final bool isFirstTime = true;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
      // initialRoute:
      //     isFirstTime ? RouteManager.startpage : RouteManager.homepage,
      // onGenerateRoute: RouteManager.routeSettings,
    );
  }
}
