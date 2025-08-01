import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/theming/colors_helper.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../logic/cubit/rfq_response_cubit.dart';
import '../screens/rfq_response_screen.dart';

class ReviewStep extends StatelessWidget {
  const ReviewStep({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RFQResponseCubit>();

    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'مراجعة وإرسال',
            style: AppTextStyles.cairoBlackBold18,
          ),
          const VerticalSpace(height: 8),
          Text(
            'يرجى مراجعة ردك على طلب عرض السعر قبل الإرسال',
            style: AppTextStyles.cairoGrayRegular14,
          ),
          const VerticalSpace(height: 24),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RfqReviewStepVendroDetailsSection(rfqCubit: cubit),
                  const VerticalSpace(height: 24),
                  RfqReviewStepPricingSection(rfqCubit: cubit),
                  const VerticalSpace(height: 24),
                  RfqReviewStepTermsSection(rfqCubit: cubit),
                  const VerticalSpace(height: 32),
                ],
              ),
            ),
          ),
          BlocBuilder<RFQResponseCubit, RFQResponseState>(
            builder: (context, state) {
              return Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: state.isSubmitting
                          ? null
                          : () => cubit.previousStep(),
                      child: Text(
                        'السابق',
                        style: TextStyle(
                          color: state.isSubmitting
                              ? ColorsHelper.secondaryGray
                              : ColorsHelper.primaryColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const HorizontalSpace(width: 16),
                  Expanded(
                    child: CustomButton(
                      width: double.infinity,
                      title:
                          state.isSubmitting ? 'جاري الإرسال...' : 'إرسال الرد',
                      onTap: state.isSubmitting
                          ? null
                          : () => cubit.createQuotation(),
                      isLoading: state.isSubmitting,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
