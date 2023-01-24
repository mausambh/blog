import 'package:blog/presentation/home/components/home.dart';
import 'package:blog/presentation/home/dashboard.dart';
import 'package:flutter/material.dart';

import '../profile/profile_details.dart';
import '../sign_in/sign_in_screen.dart';
import '../sign_up/sign_up_screen.dart';

// import 'list_view_builder.dart';

class Routes {
  static const String loginScreen = "/";
  static const String registerScreen = "/loginOption";
  static const String dashboardScreen = "/dashboardScreen";
  static const String profileScreen = '/profileScreen';
  static const String mainScreen = '/mainScreen';
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
      case Routes.dashboardScreen:
        return MaterialPageRoute(builder: (_) => MainPage());
      case Routes.mainScreen:
        return MaterialPageRoute(builder: (_) => const Dashboard());
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileDetails());
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
