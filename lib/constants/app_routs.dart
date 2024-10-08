import 'package:flutter/material.dart';
import 'package:ligare/presentation/pages/allsetprefscreen.dart';
import 'package:ligare/presentation/pages/calender_screen.dart';
import 'package:ligare/presentation/pages/explorescreen.dart';
import 'package:ligare/presentation/pages/favoritebrandscreen.dart';
import 'package:ligare/presentation/pages/filter_screen.dart';
import 'package:ligare/presentation/pages/homescreen.dart';
import 'package:ligare/presentation/pages/itemdetails_screen.dart';
import 'package:ligare/presentation/pages/loginscreen.dart';
import 'package:ligare/presentation/pages/introscreen.dart';
import 'package:ligare/presentation/pages/mainlayerscreen.dart';
import 'package:ligare/presentation/pages/meetingbooked_screen.dart';
import 'package:ligare/presentation/pages/merchant_screen.dart';
import 'package:ligare/presentation/pages/new_inscreen.dart';
import 'package:ligare/presentation/pages/notificatioscreen.dart';
import 'package:ligare/presentation/pages/pricerangescreen.dart';
import 'package:ligare/presentation/pages/regesteriation.dart';
import 'package:ligare/presentation/pages/selectedfilter_screen.dart';
import 'package:ligare/presentation/pages/sellproduct_screen.dart';
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
  static const String filterRoute = "/filter";
  static const String selectedFilterRoute = "/Selectedfilter";
  static const String priceRangeRoute = "/priceRange";
  static const String itemDetailsRoute = "/ItemDetails";
  static const String sellProductRoute = "/SellProduct";
  static const String merchantRoute = "/Merchant";
  static const String meetLigaireRoute = "/MeetLigaire";
  static const String meetingBookedRoute = "/MeetingBooked";
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
      case Routes.filterRoute:
        return MaterialPageRoute(builder: (_) => const FilterSearchScreen());
      case Routes.selectedFilterRoute:
        return MaterialPageRoute(
            builder: (_) => const SelectedFilterScreen(), settings: settings);
      case Routes.priceRangeRoute:
        return MaterialPageRoute(builder: (_) => const PriceRangeScreen());
      case Routes.itemDetailsRoute:
        return MaterialPageRoute(builder: (_) => const ItemDetailsScreen());
      case Routes.sellProductRoute:
        return MaterialPageRoute(builder: (_) => const SellProductScreen());
      case Routes.merchantRoute:
        return MaterialPageRoute(builder: (_) => const MerchantScreen());
      case Routes.meetLigaireRoute:
        return MaterialPageRoute(builder: (_) => const MeetLigaireScreen());
      case Routes.meetingBookedRoute:
        return MaterialPageRoute(builder: (_) => const MeetingBookedScreen());

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
