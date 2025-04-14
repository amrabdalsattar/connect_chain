import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/extensions.dart';
import 'package:connect_chain/core/routing/routes.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.profileScreenRoute);
      },
      child: Container(
        width: 40.w,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1),
        ),
        child: Center(
          child: SvgPicture.asset(
            width: 17.w,
            height: 17.h,
            AppImages.personIcon,
            colorFilter: const ColorFilter.mode(
              ColorsHelper.black,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
