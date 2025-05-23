import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/cache/shared_preferences_keys.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/theming/colors_helper.dart';
import '../../../main/logic/cubit/main_cubit.dart';
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
          'اهلاً بك ${context.read<MainCubit>().userData[SharedPreferencesKeys.userName]}  👋 ',
          style: AppTextStyles.cairoBlackBold18,
        ),
        actionsPadding: EdgeInsetsDirectional.only(end: 24.w),
        actions: const [
          NotificationCardIcon(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.h);
}
