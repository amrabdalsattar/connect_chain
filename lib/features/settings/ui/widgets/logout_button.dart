import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/cache/secured_storage_helper.dart';
import 'package:connect_chain/core/helpers/cache/user_data_operator.dart';
import 'package:connect_chain/core/helpers/extensions.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/routing/routes.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
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
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: ColorsHelper.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          Future.wait<void>([
            UserDataOperator.clearUserData(),
            SecuredStorageHelper.removeSecuredData()
          ]);
          context.pushReplacementNamed(Routes.loginRoute);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'تسجيل الخروج',
              style: AppTextStyles.cairoBlackBold13
                  .copyWith(color: ColorsHelper.red),
            ),
            horizontalSpace(10.w),
            SvgPicture.asset(
              width: 20.w,
              height: 20.h,
              colorFilter: ColorFilter.mode(ColorsHelper.red, BlendMode.srcIn),
              AppImages.logoutIcon,
            ),
          ],
        ),
      ),
    );
  }
}
