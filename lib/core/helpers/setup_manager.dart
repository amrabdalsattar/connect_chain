import 'package:flutter/services.dart';

import '../theming/colors_helper.dart';

class SetupManager {
  static void setupSystemUI() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: ColorsHelper.white,
      statusBarIconBrightness: Brightness.dark,
    ));
  }
}
