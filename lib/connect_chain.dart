import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/helpers/cache/user_data_operator.dart';
import 'core/helpers/token_helper.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/themes_helper.dart';

class ConnectChainApp extends StatefulWidget {
  const ConnectChainApp({super.key});

  @override
  State<ConnectChainApp> createState() => _ConnectChainAppState();
}

class _ConnectChainAppState extends State<ConnectChainApp> {
  String? _initialRoute;

  Future<void> setInitialRoute() async {
    try {
      final bool isViewedOnboarding =
          await UserDataOperator.isViewedOnboarding();

      setState(() {
        if (!isViewedOnboarding) {
          _initialRoute = Routes.onboardingRoute;
        } else if (isLoggedIn) {
          _initialRoute = Routes.mainScreenRoute;
        } else {
          _initialRoute = Routes.loginRoute;
        }
      });
    } catch (e) {
      setState(() => _initialRoute = Routes.loginRoute);
    } finally {
      FlutterNativeSplash.remove();
    }
  }

  @override
  void initState() {
    FlutterNativeSplash.preserve(
        widgetsBinding: WidgetsFlutterBinding.ensureInitialized());
    setInitialRoute();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (_, child) => MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: const Locale("ar"),
        debugShowCheckedModeBanner: false,
        title: 'ConnectChain',
        theme: ThemesHelper.lightTheme,
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: _initialRoute,
      ),
    );
  }
}
