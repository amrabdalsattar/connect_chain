import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/theming/colors_helper.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../logic/cubit/rfq_response_cubit.dart';
import '../screens/rfq_response_screen.dart';
// ...existing imports...

class TermsStep extends StatelessWidget {
  const TermsStep({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RFQResponseCubit>();

    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Form(
        key: cubit.termsFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الشروط والأحكام',
              style: AppTextStyles.cairoBlackBold18,
            ),
            const VerticalSpace(height: 8),
            Text(
              'حدد شروط التسليم والدفع',
              style: AppTextStyles.cairoGrayRegular14,
            ),
            const VerticalSpace(height: 24),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'شروط التسليم',
                      style: AppTextStyles.cairoBlackBold15,
                    ),
                    const VerticalSpace(height: 16),
                    CustomTextFormField(
                      controller: cubit.deliveryTimeController,
                      hintText: 'مثال: 2-3 أسابيع، 30 يوم',
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'مدة التسليم مطلوبة';
                        }
                        return null;
                      },
                    ),
                    const VerticalSpace(height: 16),
                    CustomTextFormField(
                      controller: cubit.deliveryLocationController,
                      hintText: 'أدخل موقع أو شروط التسليم',
                      maxLines: 2,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'موقع التسليم مطلوب';
                        }
                        return null;
                      },
                    ),
                    const VerticalSpace(height: 16),
                    CustomTextFormField(
                      controller: cubit.shippingCostController,
                      hintText: '0.00',
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'تكلفة الشحن مطلوبة';
                        }
                        if (double.tryParse(value) == null) {
                          return 'يرجى إدخال مبلغ صحيح';
                        }
                        return null;
                      },
                    ),
                    const VerticalSpace(height: 24),
                    Text(
                      'شروط الدفع',
                      style: AppTextStyles.cairoBlackBold15,
                    ),
                    const VerticalSpace(height: 16),
                    RfqPaymentTermsDropdownmenu(rfqCubit: cubit),
                    const VerticalSpace(height: 16),
                    CustomTextFormField(
                      controller: cubit.validityPeriodController,
                      hintText: 'مثال: 30 يوم، أسبوعين',
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'مدة الصلاحية مطلوبة';
                        }
                        return null;
                      },
                    ),
                    const VerticalSpace(height: 24),
                    Text(
                      'شروط إضافية',
                      style: AppTextStyles.cairoBlackBold15,
                    ),
                    const VerticalSpace(height: 16),
                    CustomTextFormField(
                      controller: cubit.warrantyController,
                      hintText: 'أدخل تفاصيل الضمان',
                      maxLines: 2,
                      validator: (value) {},
                    ),
                    const VerticalSpace(height: 16),
                    CustomTextFormField(
                      controller: cubit.additionalTermsController,
                      hintText: 'أدخل أي شروط إضافية',
                      maxLines: 4,
                      validator: (value) {},
                    ),
                    const VerticalSpace(height: 32),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => cubit.previousStep(),
                    child: Text(
                      'السابق',
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
                    title: 'التالي',
                    onTap: () => cubit.nextStep(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
