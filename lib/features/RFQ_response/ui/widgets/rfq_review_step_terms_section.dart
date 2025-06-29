part of '../screens/rfq_response_screen.dart';

class RfqReviewStepTermsSection extends StatelessWidget {
  const RfqReviewStepTermsSection({super.key, required this.rfqCubit});
  final RFQResponseCubit rfqCubit;

  @override
  Widget build(BuildContext context) {
    return RfqReviewStepCustomSection(
      title: 'Terms & Conditions',
      child: Column(
        children: [
          RfqReviewStepDetailRow(
              label: 'Delivery Time', value: rfqCubit.deliveryTimeController.text),
          RfqReviewStepDetailRow(
              label: 'Delivery Location',
              value: rfqCubit.deliveryLocationController.text),
          RfqReviewStepDetailRow(
              label: 'Shipping Cost',value: '\$${rfqCubit.shippingCostController.text}'),
          RfqReviewStepDetailRow(label:'Payment Terms', value:rfqCubit.selectedPaymentTerms),
          RfqReviewStepDetailRow(label:
              'Quote Validity', value:rfqCubit.validityPeriodController.text),
          if (rfqCubit.warrantyController.text.isNotEmpty)
            RfqReviewStepDetailRow(label: 'Warranty',value:  rfqCubit.warrantyController.text),
          if (rfqCubit.additionalTermsController.text.isNotEmpty)
            RfqReviewStepDetailRow(label: 
                'Additional Terms',value:  rfqCubit.additionalTermsController.text),
        ],
      ),
    );
  }
}
