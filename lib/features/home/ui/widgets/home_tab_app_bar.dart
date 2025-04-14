import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_text_styles.dart';
import 'profile_icon.dart';

class HomeTabAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeTabAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: AppBar(
        surfaceTintColor: ColorsHelper.homeScaffoldColor,
        backgroundColor: ColorsHelper.homeScaffoldColor,
        toolbarHeight: preferredSize.height,
        title: Text(
          'اهلا بك Amr Abdelsattar  👋 ',
          style: AppTextStyles.cairoBlackBold18,
        ),
        actionsPadding: EdgeInsetsDirectional.only(end: 24.w),
        actions: const [
          ProfileIcon(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.h);
}
