import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/theming/colors_helper.dart';
import '../../../../core/theming/font_weight_helper.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../logic/cubit/rfq_response_cubit.dart';

class RFQResponseSuccess extends StatelessWidget {
  const RFQResponseSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RFQResponseCubit, RFQResponseState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120.w,
                height: 120.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsHelper.primaryColor.withValues(alpha: 0.1),
                ),
                child: Icon(
                  Icons.check_circle,
                  size: 60.sp,
                  color: ColorsHelper.primaryColor,
                ),
              ),
              const VerticalSpace(height: 32),
              Text(
                'تم إرسال الرد بنجاح!',
                style: AppTextStyles.cairoBlackBold20,
                textAlign: TextAlign.center,
              ),
              const VerticalSpace(height: 16),
              Text(
                'تم إرسال ردك على طلب عرض السعر بنجاح. سيتم مراجعة العرض من قبل العميل وسيتم التواصل معك لاحقًا.',
                style: AppTextStyles.cairoGrayRegular14,
                textAlign: TextAlign.center,
              ),
              const VerticalSpace(height: 32),
              if (state.newQuotatoin != null)
                _buildResponseSummary(state.newQuotatoin),
              const VerticalSpace(height: 32),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        // الانتقال إلى قائمة الردود أو لوحة التحكم
                        context.pop();
                      },
                      style: OutlinedButton.styleFrom(
                        side:
                            const BorderSide(color: ColorsHelper.primaryColor),
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                      ),
                      child: Text(
                        'عرض ردودي',
                        style: TextStyle(
                          color: ColorsHelper.primaryColor,
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
                      title: 'تم',
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildResponseSummary(dynamic rfqResponse) {
    // حساب الإجمالي من عناصر العرض
    final lineItems = rfqResponse.lineItems as List<dynamic>? ?? [];
    final subtotal = lineItems.fold<double>(
      0.0,
      (sum, item) => sum + ((item.unitPrice ?? 0.0) * (item.quantity ?? 0)),
    );
    final tax = subtotal * 0.1;
    final total = subtotal + tax;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: ColorsHelper.liteGray,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: ColorsHelper.dividerGray),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ملخص الرد',
            style: AppTextStyles.cairoBlackBold15,
          ),
          const VerticalSpace(height: 16),
          _buildSummaryRow(
              'رقم الرد', rfqResponse.id?.toString() ?? 'غير متوفر'),
          _buildSummaryRow('الشركة', rfqResponse.companyName ?? 'غير متوفر'),
          _buildSummaryRow('عدد العناصر', lineItems.length.toString()),
          _buildSummaryRow('الإجمالي', '${total.toStringAsFixed(2)} ر.س'),
          _buildSummaryRow('الحالة', _getStatusText(rfqResponse.status)),
          if (rfqResponse.validityPeriod != null &&
              rfqResponse.validityPeriod!.isNotEmpty)
            _buildSummaryRow('صالح حتى', rfqResponse.validityPeriod!),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$label:',
            style: AppTextStyles.cairoGrayRegular14,
          ),
          Text(
            value,
            style: AppTextStyles.cairoBlackBold15
                .copyWith(fontWeight: FontWeightHelper.medium),
          ),
        ],
      ),
    );
  }

  String _getStatusText(status) {
    if (status == null) return 'تم الإرسال';

    switch (status.toString().toLowerCase()) {
      case 'submitted':
        return 'تم الإرسال';
      case 'under_review':
        return 'قيد المراجعة';
      case 'accepted':
        return 'مقبول';
      case 'rejected':
        return 'مرفوض';
      default:
        return 'تم الإرسال';
    }
  }
}
