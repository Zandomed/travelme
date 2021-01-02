import 'package:flutter/material.dart';
import 'package:travelme/pages/first_sign_in.page.dart';
import 'package:travelme/pages/home.page.dart';
import 'package:travelme/pages/welcome.page.dart';

class MainRouter {
  static String getInitialRoute() {
    return WelcomePage.routeName;
  }

  static Route<dynamic> Function(RouteSettings) getOnGenerateRoute() {
    return (RouteSettings settings) {
      final dynamic args = settings.arguments;
      final String nameRoute = settings.name;
      print('onGenerateRoute $nameRoute');

      switch (nameRoute) {

//         case WelcomePage.routeName:
//           return PageRouteBuilder(
//               transitionDuration: Duration(seconds: 1),
//               reverseTransitionDuration: Duration(seconds: 1),
//               pageBuilder: (_, __, ___) => WelcomePage());
//         case FirstSignInPage.routeName:
//           return PageRouteBuilder(
//               transitionDuration: Duration(seconds: 1),
//               reverseTransitionDuration: Duration(seconds: 1),
//               pageBuilder: (_, __, ___) => FirstSignInPage());

        case WelcomePage.routeName:
          return CustomPageRoute(
              builder: (BuildContext context) => WelcomePage());
        case FirstSignInPage.routeName:
          return CustomPageRoute(
              builder: (BuildContext context) => FirstSignInPage());
        case HomePage.routeName:
          return CustomPageRoute(
              builder: (BuildContext context) => HomePage());
        default:
          return null;
      }
    };
  }
}

class CustomPageRoute extends MaterialPageRoute {
  @override
  Duration get transitionDuration => const Duration(seconds: 1);

  CustomPageRoute({builder}) : super(builder: builder);
}
