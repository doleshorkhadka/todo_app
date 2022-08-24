import 'package:flutter/material.dart';
import 'package:todo_app/routes/navigation_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteManager.homepage,
      onGenerateRoute: RouteManager.routeSettings,
    );
  }
}
