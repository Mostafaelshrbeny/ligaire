import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive/hive.dart';

import 'package:ligare/data/data_sources/localedate.dart';
import 'package:ligare/domain/use_cases/mainmethods.dart';
import 'package:ligare/core/lang/codegen_loader.g.dart';
import 'package:ligare/presentation/blocs/BlocObserver/blocobserver.dart';
import 'package:ligare/presentation/pages/app.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Bloc.observer = const SimpleBlocObserver();
  Hive.init(appDocumentDirectory.path);
  await EasyLocalization.ensureInitialized();
  MainAppFunctions.statusbarColor();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await HiveLocaleData.openbox('MyAppData');
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en', 'US')],
        path: 'assets/lang',
        startLocale: const Locale('en', 'US'),
        fallbackLocale: const Locale('en', 'US'),
        assetLoader: const CodegenLoader(),
        child: const MyApp()),
  );
}
