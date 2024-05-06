import 'package:flutter/material.dart';
import 'package:ligare/presentation/pages/loginscreen.dart';
import 'package:ligare/presentation/pages/introscreen.dart';
import 'package:ligare/presentation/pages/regesteriation.dart';
import 'package:ligare/presentation/pages/signupintro.dart';
import 'package:ligare/presentation/pages/verifycode.dart';

class Routes {
  static const String splashRoute = "/splash";
  static const String loginRoute = "/login";
  static const String intorRoute = "/Intro";
  static const String sugnupIntroRoute = "/SignUpIntro";
  static const String verifyRoute = "/Verify";
  static const String regesteriationRoute = "/Regesteriation";
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.intorRoute:
        return MaterialPageRoute(builder: (_) => const IntroScreen());
      case Routes.sugnupIntroRoute:
        return MaterialPageRoute(builder: (_) => const SignUpIntroScreen());
      case Routes.regesteriationRoute:
        return MaterialPageRoute(builder: (_) => const RegesteriationScreen());
      case Routes.verifyRoute:
        return MaterialPageRoute(builder: (_) => const VerifyScreen());

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
              body: Center(child: Text("Not Found")),
            ));
  }
}
