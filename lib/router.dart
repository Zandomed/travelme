import 'package:flutter/material.dart';
import 'package:travelme/pages/welcome.page.dart';

class MainRouter {
  static String getInitialRoute() {
    return WelcomePage.routeName;
  }

  static Route<dynamic> Function(RouteSettings) getOnGenerateRoute() {
    return (RouteSettings settings) {
      final dynamic args = settings.arguments;
      final String nameRoute = settings.name;

      switch (nameRoute) {
        case WelcomePage.routeName:
          return MaterialPageRoute(
              builder: (BuildContext context) => WelcomePage());
        default:
          return null;
      }
    };
  }
}
