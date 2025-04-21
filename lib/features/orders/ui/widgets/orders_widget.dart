part of '../orders_tab.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key, required this.orderStatus});

  final OrderStatus orderStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(width: 1.w, color: ColorsHelper.borderGray),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First Row Starter
          OrderWidgetFirstRow(
            orderStatus: orderStatus,
          ),
          verticalSpace(16),

          // Second Raw Starter
          const OrderWidgetText(
            fieldText: 'اسم العميل',
            valueText: 'محمد علاء',
          ),
          verticalSpace(8),
          const OrderWidgetText(
            fieldText: 'المنتجات',
            valueText: 'sunglasses , camera',
          ),
          verticalSpace(16),

          // Price Section
          Align(
            alignment: Alignment.center,
            child: OrderWidgetText(
              fieldText: 'السعر الاجمالي',
              valueText: '2000 EGP',
              valueTextStyle: AppTextStyles.carioRedBold12,
            ),
          ),
          verticalSpace(16),

          // Button Row

          OrderWigetButton(
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
