part of '../screens/rfq_response_screen.dart';

class RfqReviewStepPricingSection extends StatelessWidget {
  const RfqReviewStepPricingSection({super.key, required this.rfqCubit});
  final RFQResponseCubit rfqCubit;

  @override
  Widget build(BuildContext context) {
    final item = rfqCubit.lineItem;
    final subtotal = item != null ? (item.unitPrice * item.quantity) : 0.0;
    final tax = subtotal * 0.1;
    final total = subtotal + tax;

    return RfqReviewStepCustomSection(
      title: 'Pricing Details',
      child: item == null
          ? const Text('No product selected.')
          : Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 12.h),
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: ColorsHelper.liteGray,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Product: ${item.productName}',
                        style: AppTextStyles.cairoBlackBold15,
                      ),
                      if (item.productDescription?.isNotEmpty ?? false)
                        Text(
                          item.productDescription ?? '',
                          style: AppTextStyles.carioGrayBold12,
                        ),
                      const VerticalSpace(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${item.quantity} × \$${item.unitPrice.toStringAsFixed(2)}',
                            style: AppTextStyles.carioGrayBold12,
                          ),
                          Text(
                            '\$${(item.quantity * item.unitPrice).toStringAsFixed(2)}',
                            style: AppTextStyles.cairoBlackBold15,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(height: 24.h),
                RfqReviewStepDetailRow(
                    label: 'Subtotal',
                    value: '\$${subtotal.toStringAsFixed(2)}'),
                RfqReviewStepDetailRow(
                    label: 'Tax (10%)', value: '\$${tax.toStringAsFixed(2)}'),
                RfqReviewStepDetailRow(
                  label: 'Total',
                  value: '\$${total.toStringAsFixed(2)}',
                  isTotal: true,
                ),
              ],
            ),
    );
  }
}
