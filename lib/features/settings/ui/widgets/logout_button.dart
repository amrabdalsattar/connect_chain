import '../../../../core/helpers/app_images.dart';
import '../../../../core/helpers/cache/secured_storage_helper.dart';
import '../../../../core/helpers/cache/user_data_operator.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/colors_helper.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      child: ElevatedButton(
        onPressed: () {
          Future.wait<void>([
            UserDataOperator.clearUserData(),
            SecuredStorageHelper.removeSecuredData()
          ]);
          context.pushReplacementNamed(Routes.loginRoute);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsHelper.white,
          foregroundColor: ColorsHelper.red,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          padding: EdgeInsets.all(16.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'تسجيل الخروج',
              style: AppTextStyles.cairoBlackBold13
                  .copyWith(color: ColorsHelper.red),
            ),
            const HorizontalSpace(width: 10),
            SvgPicture.asset(
              width: 20.w,
              height: 20.h,
              colorFilter: const ColorFilter.mode(
                ColorsHelper.red,
                BlendMode.srcIn,
              ),
              AppImages.logoutIcon,
            ),
          ],
        ),
      ),
    );
  }
}
