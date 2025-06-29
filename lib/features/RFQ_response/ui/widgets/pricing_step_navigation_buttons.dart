part of '../screens/rfq_response_screen.dart';

class PricingStepNavigationButtons extends StatelessWidget {
  const PricingStepNavigationButtons({super.key, required this.rfqCubit});
  final RFQResponseCubit rfqCubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () {
              context.read<RFQResponseCubit>().previousStep();
            },
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              side: const BorderSide(color: ColorsHelper.primaryColor),
            ),
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
            onTap: () {
              if (rfqCubit.pricingFormKey.currentState?.validate() ?? false) {
                rfqCubit.nextStep();
              }
            },
          ),
        ),
      ],
    );
  }
}
