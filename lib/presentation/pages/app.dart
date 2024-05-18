import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/domain/use_cases/mainmethods.dart';
import 'package:ligare/presentation/pages/introscreen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    MainAppFunctions.removeSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: AppThemeData.darkThemeData,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      home: const IntroScreen(),
    );
  }
}
