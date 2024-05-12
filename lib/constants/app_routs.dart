import 'package:flutter/material.dart';
import 'package:ligare/presentation/pages/allsetprefscreen.dart';
import 'package:ligare/presentation/pages/explorescreen.dart';
import 'package:ligare/presentation/pages/favoritebrandscreen.dart';
import 'package:ligare/presentation/pages/homescreen.dart';
import 'package:ligare/presentation/pages/loginscreen.dart';
import 'package:ligare/presentation/pages/introscreen.dart';
import 'package:ligare/presentation/pages/mainlayerscreen.dart';
import 'package:ligare/presentation/pages/new_inscreen.dart';
import 'package:ligare/presentation/pages/notificatioscreen.dart';
import 'package:ligare/presentation/pages/regesteriation.dart';
import 'package:ligare/presentation/pages/setpassword.dart';
import 'package:ligare/presentation/pages/setpreferences_screen.dart';
import 'package:ligare/presentation/pages/signupintro.dart';
import 'package:ligare/presentation/pages/verifycode.dart';

class Routes {
  static const String splashRoute = "/splash";
  static const String loginRoute = "/login";
  static const String intorRoute = "/Intro";
  static const String sugnupIntroRoute = "/SignUpIntro";
  static const String verifyRoute = "/Verify";
  static const String regesteriationRoute = "/Regesteriation";
  static const String setPasswordRoute = "/SetPassword";
  static const String setPreferencesRoute = "/SetPreferences";
  static const String favBrandsRoute = "/FavBrands";
  static const String allSetRoute = "/AllSet";
  static const String homeRoute = "/Home";
  static const String mainlayerRoute = "/MainLayer";
  static const String notificationsRoute = "/Notifications";
  static const String exploreRoute = "/Explore";
  static const String newInRoute = "/newIn";
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
      case Routes.setPasswordRoute:
        return MaterialPageRoute(builder: (_) => const SetPasswordScreen());
      case Routes.setPreferencesRoute:
        return MaterialPageRoute(builder: (_) => const SetPreferencesScreen());
      case Routes.favBrandsRoute:
        return MaterialPageRoute(builder: (_) => const FavoriteBrandsScreen());
      case Routes.allSetRoute:
        return MaterialPageRoute(builder: (_) => const AllSetScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.notificationsRoute:
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());
      case Routes.mainlayerRoute:
        return MaterialPageRoute(builder: (_) => const MainLayerScreen());
      case Routes.exploreRoute:
        return MaterialPageRoute(builder: (_) => const ExploreScreen());
      case Routes.newInRoute:
        return MaterialPageRoute(builder: (_) => const NewInScreen());

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
