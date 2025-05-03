import '../../../../core/helpers/cache/shared_preferences_helper.dart';
import '../../../../core/helpers/cache/shared_preferences_keys.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/theming/colors_helper.dart';
import '../../../../core/utils/format_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final String fullName =
        SharedPreferencesHelper.getString(SharedPreferencesKeys.userName);
    return Container(
      decoration: BoxDecoration(
        color: ColorsHelper.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Material(
        color: ColorsHelper.transparent,
        borderRadius: BorderRadius.circular(12.r),
        child: InkWell(
          onTap: () => context.pushNamed(Routes.profileScreenRoute),
          borderRadius: BorderRadius.circular(12.r),
          splashColor: ColorsHelper.liteBlue.withValues(alpha: 0.2),
          child: ListTile(
            leading: CircleAvatar(
              radius: 20.r,
              backgroundColor: ColorsHelper.homeScaffoldColor,
              child: Text(
                getInitialLetters(fullName),
                style: AppTextStyles.cairoBlackBold18,
              ),
            ),
            title: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'أهلاً ',
                    style: AppTextStyles.cairoBlackBold15
                        .copyWith(color: ColorsHelper.primaryColor)),
                TextSpan(
                  text: getFirstName(fullName),
                  style: AppTextStyles.cairoBlackBold15,
                )
              ]),
            ),
            subtitle: Text(
              SharedPreferencesHelper.getString(
                  SharedPreferencesKeys.userEmail),
              style: AppTextStyles.cairoGrayMedium12,
            ),
          ),
        ),
      ),
    );
  }
}
