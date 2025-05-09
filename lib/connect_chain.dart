import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/helpers/cache/user_data_operator.dart';
import 'core/routing/app_router.dart';
import 'core/theming/themes_helper.dart';

class ConnectChainApp extends StatelessWidget {
  const ConnectChainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (_, child) => MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: const Locale('ar'),
        debugShowCheckedModeBanner: false,
        title: 'ConnectChain',
        theme: ThemesHelper.lightTheme,
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: UserDataOperator.getInitialRoute(),
      ),
    );
  }
}
