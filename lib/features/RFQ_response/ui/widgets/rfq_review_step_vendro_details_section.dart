part of '../screens/rfq_response_screen.dart';

class RfqReviewStepVendroDetailsSection extends StatelessWidget {
  const RfqReviewStepVendroDetailsSection({super.key, required this.rfqCubit});
  final RFQResponseCubit rfqCubit;

  @override
  Widget build(BuildContext context) {
    rfqCubit.getSupplierData();
    return BlocBuilder<RFQResponseCubit, RFQResponseState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CustomLoadingIndicator(),
          );
        }
        return RfqReviewStepCustomSection(
          title: 'Vendor Details',
          child: Column(
            children: [
              RfqReviewStepDetailRow(
                  label: 'Contact Person',
                  value: rfqCubit.supplierData?.name ?? ''),
              RfqReviewStepDetailRow(
                  label: 'Email', value: rfqCubit.supplierData?.email ?? ''),
              RfqReviewStepDetailRow(
                  label: 'Phone',
                  value: rfqCubit.supplierData?.phoneNumber ?? ''),
              RfqReviewStepDetailRow(
                  label: 'Address',
                  value: rfqCubit.supplierData?.address ?? ''),
              RfqReviewStepDetailRow(
                  label: 'Tax ID',
                  value: rfqCubit.supplierData?.activityCategory ?? ''),
            ],
          ),
        );
      },
    );
  }
}
