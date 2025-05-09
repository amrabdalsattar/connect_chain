import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'connect_chain.dart';
import 'core/helpers/setup_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final SetupManager setupManager = SetupManager();

  await setupManager.initialSetup();

  runApp(localizationSetup(const ConnectChainApp()));
}

EasyLocalization localizationSetup(Widget myApp) {
  return EasyLocalization(
    supportedLocales: const [
      Locale('en'),
      Locale('ar'),
    ],
    path: 'assets/translations',
    fallbackLocale: const Locale('ar'),
    child: myApp,
  );
}
