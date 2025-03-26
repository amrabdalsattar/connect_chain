import 'package:connect_chain/core/helpers/setup_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'connect_chain.dart';
import 'core/di/dependency_injection.dart';
import 'core/helpers/shared_preferences/shared_preferences_helper.dart';
import 'core/helpers/token_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SetupManager.setupSystemUI();

  await setUpGetIt();
  await SharedPreferencesHelper.init();
  await TokenHelper.checkIfUserIsLoggedIn();

  await ScreenUtil.ensureScreenSize();
  runApp(const ConnectChainApp());
}
