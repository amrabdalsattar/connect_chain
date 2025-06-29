part of '../screens/rfq_response_screen.dart';

class RfqPaymentTermsDropdownmenu extends StatelessWidget {
  const RfqPaymentTermsDropdownmenu({super.key, required this.rfqCubit});

  final RFQResponseCubit rfqCubit;

  @override
  Widget build(BuildContext context) {
    final paymentTerms = [
      'صافي 30 يوم',
      'صافي 15 يوم',
      'عند الاستلام',
      '50% مقدماً، 50% عند التسليم',
      '30% مقدماً، 70% عند التسليم',
      'الدفع عند التسليم (COD)',
      'خطاب اعتماد (L/C)',
      'أخرى',
    ];

    return BlocBuilder<RFQResponseCubit, RFQResponseState>(
      builder: (context, state) {
        return DropdownButtonFormField<String>(
          value: rfqCubit.selectedPaymentTerms.isEmpty
              ? null
              : rfqCubit.selectedPaymentTerms,
          decoration: InputDecoration(
            labelText: 'شروط الدفع',
            hintText: 'اختر شروط الدفع',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: ColorsHelper.dividerGray),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: ColorsHelper.dividerGray),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide:
                  const BorderSide(color: ColorsHelper.primaryColor, width: 2),
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          ),
          items: paymentTerms.map((term) {
            return DropdownMenuItem<String>(
              value: term,
              child: Text(
                term,
                style: AppTextStyles.cairoGrayRegular14,
              ),
            );
          }).toList(),
          onChanged: (value) {
            if (value != null) {
              rfqCubit.setPaymentTerms(value);
            }
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'شروط الدفع مطلوبة';
            }
            return null;
          },
        );
      },
    );
  }
}
