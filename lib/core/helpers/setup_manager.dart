import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../di/dependency_injection.dart';
import '../theming/colors_helper.dart';
import '../utils/app_bloc_observer.dart';
import 'cache/shared_preferences_helper.dart';
import 'token_helper.dart';

class SetupManager {
  static Future<void> initialSetup() async {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: ColorsHelper.white,
      statusBarIconBrightness: Brightness.dark,
    ));

    await setUpGetIt();
    await SharedPreferencesHelper.init();
    await TokenHelper.checkIfUserIsLoggedIn();

    await EasyLocalization.ensureInitialized();

    await ScreenUtil.ensureScreenSize();

    Bloc.observer = AppBlocObserver();
  }
}
