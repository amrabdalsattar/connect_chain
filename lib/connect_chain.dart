import 'package:connect_chain/core/routing/app_router.dart';
import 'package:connect_chain/core/routing/routes.dart';
import 'package:connect_chain/core/theming/themes_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConnectChainApp extends StatelessWidget {
  const ConnectChainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Connect Chain',
        theme: ThemesHelper.lightTheme,
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: Routes.loginScreen,
      ),
    );
  }
}
