import 'package:connect_chain/firebase_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../di/dependency_injection.dart';
import '../theming/colors_helper.dart';
import '../utils/app_bloc_observer.dart';
import 'cache/shared_preferences_helper.dart';
import 'token_helper.dart';

class SetupManager {
  Future<void> initialSetup() async {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: ColorsHelper.white,
      statusBarIconBrightness: Brightness.dark,
    ));

    await SharedPreferencesHelper.init();
    await _initFirebase();
    await Future.wait<void>([
      setUpGetIt(),
      EasyLocalization.ensureInitialized(),
      TokenHelper.checkIfUserIsLoggedIn(),
      EasyLocalization.ensureInitialized(),
      ScreenUtil.ensureScreenSize(),
    ]);

    Bloc.observer = AppBlocObserver();
  }

  Future<void> _initFirebase() async {
    final options = DefaultFirebaseOptions.currentPlatform;

    try {
      final app = await Firebase.initializeApp(options: options);

      debugPrint(app.name);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
