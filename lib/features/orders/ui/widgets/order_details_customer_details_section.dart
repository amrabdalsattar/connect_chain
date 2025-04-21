part of '../order_details_screen.dart';



class OrderDetailsCustomerDetailsSection extends StatelessWidget {
  const OrderDetailsCustomerDetailsSection({
    super.key,
    required this.orderDetailsModel,
  });

  final OrderDetailsResponseModel orderDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'تفاصيل العميل',
            style: AppTextStyles.cairoPrimaryBold20,
          ),
          verticalSpace(16),
          OrderDetailsText(
              fieldText: 'الاسم', valueText: orderDetailsModel.customerName),
          verticalSpace(8),
          OrderDetailsText(
              fieldText: 'العنوان',
              valueText: orderDetailsModel.customerAddress),
          verticalSpace(8),
          OrderDetailsText(
              fieldText: 'ريقة الدفع',
              valueText: orderDetailsModel.paymentMethod),
        ],
      ),
    );
  }
}
