import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsOptionTile extends StatelessWidget {
  final bool isLastItem;
  final String title;
  const SettingsOptionTile(
      {super.key, this.isLastItem = false, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => showAboutDialog(
              context: context,
              applicationVersion: '1.0.6',
              applicationIcon: Image.asset(
                AppImages.connectChainLogo,
                width: 30.w,
                height: 30.h,
              )),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            minVerticalPadding: 0,
            titleTextStyle:
                AppTextStyles.cairoBlackBold15.copyWith(fontSize: 12.sp),
            title: Text(title),
            trailing: Icon(Icons.arrow_right),
          ),
        ),
        Visibility(
          visible: !isLastItem,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Divider(
              color: ColorsHelper.homeScaffoldColor,
              thickness: 2,
            ),
          ),
        )
      ],
    );
  }
}
