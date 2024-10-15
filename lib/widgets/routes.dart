import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/home.dart';
import 'package:flutterapp/widgets/login.dart';

class Routes {
  static const String home = '/home';
  static const String login = '/login';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      default:
        return MaterialPageRoute(
          builder: (_) => LoginPage(), // fallback page
        );
    }
  }
}
