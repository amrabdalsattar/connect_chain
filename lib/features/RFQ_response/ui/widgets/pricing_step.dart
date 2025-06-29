import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/theming/colors_helper.dart';

import '../../logic/cubit/rfq_response_cubit.dart';
import '../screens/rfq_response_screen.dart';
// ...existing imports...

class PricingStep extends StatelessWidget {
  const PricingStep({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RFQResponseCubit>();

    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Form(
        key: cubit.pricingFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'تفاصيل التسعير',
              style: AppTextStyles.cairoBlackBold18,
            ),
            const VerticalSpace(height: 8),
            Text(
              'أضف عناصر التسعير مع معلومات الأسعار',
              style: AppTextStyles.cairoGrayRegular14,
            ),
            const VerticalSpace(height: 24),
            Expanded(
              child: BlocBuilder<RFQResponseCubit, RFQResponseState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Expanded(
                        child: cubit.lineItem == null
                            ? _buildEmptyState()
                            : RFQLineItemList(rfqCubit: cubit),
                      ),
                      const VerticalSpace(height: 16),
                      AddLineItemButton(rfqCubit: cubit),
                      const VerticalSpace(height: 24),
                      PricingStepNavigationButtons(
                        rfqCubit: cubit,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.shopping_cart_outlined,
            size: 64.sp,
            color: ColorsHelper.gray,
          ),
          const VerticalSpace(height: 16),
          Text(
            'لم يتم إضافة أي عناصر بعد',
            style: AppTextStyles.cairoBlackBold15,
          ),
          const VerticalSpace(height: 8),
          Text(
            'أضف عناصر إلى عرض السعر الخاص بك',
            style: AppTextStyles.cairoGrayRegular14,
          ),
        ],
      ),
    );
  }
}
