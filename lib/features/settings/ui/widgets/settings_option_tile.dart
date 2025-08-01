import '../../../../core/helpers/app_images.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/theming/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsOptionTile extends StatelessWidget {
  final bool isLastItem;
  final String title;
  final void Function()? onTap;
  const SettingsOptionTile(
      {super.key, this.isLastItem = false, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          child: InkWell(
            onTap: onTap ??
                () => showAboutDialog(
                    context: context,
                    applicationVersion: '1.0.6',
                    applicationIcon: Image.asset(
                      AppImages.connectChainLogo,
                      width: 30.w,
                      height: 30.h,
                    )),
            borderRadius: BorderRadius.circular(12.r),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              minVerticalPadding: 0,
              titleTextStyle:
                  AppTextStyles.cairoBlackBold15.copyWith(fontSize: 12.sp),
              title: Text(title),
              trailing: const Icon(Icons.arrow_right),
            ),
          ),
        ),
        Visibility(
          visible: !isLastItem,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: const Divider(
              color: ColorsHelper.homeScaffoldColor,
              thickness: 2,
            ),
          ),
        )
      ],
    );
  }
}
