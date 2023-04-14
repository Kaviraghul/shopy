import 'package:flutter/material.dart';
import 'package:shopy/presentation/resources/routes_manager.dart';
import 'package:shopy/presentation/resources/themes_manager.dart';

class MyApp extends StatefulWidget {
  MyApp._internal();

  static final MyApp instance = MyApp._internal();

  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.loginRoute,
      theme: getApplicationTheme(),
    );
  }
}
