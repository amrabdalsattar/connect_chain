import 'package:connect_chain/features/main/logic/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/theming/colors_helper.dart';

class NotificationCardIcon extends StatelessWidget {
  const NotificationCardIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<MainCubit>().toggleCurrentTabIndex = 1;
      },
      child: Container(
        width: 40.w,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1),
        ),
        child: Center(
          child: Image.asset(
            width: 24.w,
            height: 24.h,
            AppImages.notificationsIcon,
            color: ColorsHelper.black,
          ),
        ),
      ),
    );
  }
}
