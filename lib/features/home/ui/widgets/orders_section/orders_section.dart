import 'widgets/orders_section_data.dart';
import '../../../../main/logic/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/theming/colors_helper.dart';

class OrdersSection extends StatelessWidget {
  const OrdersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
      decoration: BoxDecoration(
        color: ColorsHelper.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ملخص الطلبات',
                style: AppTextStyles.cairoBlackBold16,
              ),
              GestureDetector(
                onTap: () {
                  context.read<MainCubit>().toggleCurrentTabIndex = 3;
                },
                child: Text(
                  'عرض الكل',
                  style: AppTextStyles.cairoPrimaryBold12.copyWith(
                      decoration: TextDecoration.underline,
                      decorationColor: ColorsHelper.primaryColor),
                ),
              )
            ],
          ),
          verticalSpace(24),
          const OrdersSectionData()
        ],
      ),
    );
  }
}
