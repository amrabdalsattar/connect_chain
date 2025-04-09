import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'connect_chain.dart';
import 'core/di/dependency_injection.dart';
import 'core/helpers/setup_manager.dart';
import 'core/helpers/cache/shared_preferences_helper.dart';
import 'core/helpers/token_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SetupManager.setupSystemUI();

  await setUpGetIt();
  await SharedPreferencesHelper.init();
  await TokenHelper.checkIfUserIsLoggedIn();

  await EasyLocalization.ensureInitialized();

  await ScreenUtil.ensureScreenSize();
  runApp(EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('ar'),
      child: const ConnectChainApp()));
}
