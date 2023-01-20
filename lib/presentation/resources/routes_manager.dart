import 'package:flutter/material.dart';

import '../sign_in/sign_in_screen.dart';
import '../sign_up/sign_up_screen.dart';

// import 'list_view_builder.dart';

class Routes {
  static const String loginScreen = "/";
  static const String registerScreen = "/loginOption";
  static const String thirdScreen = "/thirdScreen";
  // static const String setMobileNumberScreen = "/setMobileNumberScreen";
  // static const String dialNumber = "/dialNumber";
}

class RouteGenerator {
  static Route<dynamic> getRoute(
    RouteSettings routeSettings,
  ) {
    switch (routeSettings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginFormClass());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterFormClass());
      case Routes.thirdScreen:
      // return MaterialPageRoute(builder: (_) => const ThirdScreen());
      // case Routes.thirdScreen:
      //   return MaterialPageRoute(builder: (_) => const ThirdScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("No Route Found"),
              ),
              body: const Center(child: Text("No Route Found")),
            ));
  }
}
