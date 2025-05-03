import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors_helper.dart';
import 'settings_option_tile.dart';

class LegalAndPoliciesSection extends StatelessWidget {
  const LegalAndPoliciesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      padding: EdgeInsets.all(20.r),
      decoration: BoxDecoration(
        color: ColorsHelper.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: const Column(
        children: [
          SettingsOptionTile(title: 'الشروط والأحكام'),
          SettingsOptionTile(title: 'سياسة الخصوصية'),
          SettingsOptionTile(title: 'التراخيص'),
          SettingsOptionTile(title: 'حول التطبيق', isLastItem: true),
        ],
      ),
    );
  }
}
