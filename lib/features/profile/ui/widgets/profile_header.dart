import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          colors: [
            ColorsHelper.primaryColor,
            ColorsHelper.profileHeaderGradientEnd,
          ],
        ),
      ),
      height: 85.h,
      width: 342.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          horizontalSpace(24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' اهلا بك ',
                style: AppTextStyles.cairoWhiteBold12,
              ),
              verticalSpace(3),
              Text(
                'Mohamed Alaa',
                style: AppTextStyles.cairoWhiteBold16,
              ),
            ],
          ),
          const Spacer(),
          // App Logo
          Container(
            margin: const EdgeInsetsDirectional.only(end: 16, top: 13),
            width: 24.w,
            height: 24.h,
            child: Image.asset(AppImages.connectChainwhiteLogo),
          ),
        ],
      ),
    );
  }
}
