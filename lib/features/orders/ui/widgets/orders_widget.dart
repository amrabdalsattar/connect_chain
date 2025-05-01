part of '../orders_tab.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key, required this.order});

  final OrderModel order;

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
            orderStatus: order.orderStatus,
            orderDate: order.orderDate,
            orderId: order.orderNumber ?? order.id.toString(),
          ),
          verticalSpace(16),

          // Second Raw Starter
          OrderWidgetText(
            fieldText: 'اسم العميل',
            valueText: order.customerName,
          ),
          verticalSpace(8),
          OrderWidgetText(
            fieldText: 'المنتجات',
            // Needs to be refactored
            valueText: order.products.join(' - '),
          ),
          verticalSpace(16),

          // Price Section
          Align(
            alignment: Alignment.center,
            child: OrderWidgetText(
              fieldText: 'السعر الاجمالي',
              valueText: '${order.totalAmount} ج.م',
              valueTextStyle: AppTextStyles.cairoRedBold12,
            ),
          ),
          verticalSpace(16),

          // Button Row
          OrderWidgetButton(
            onTap: () {
              context.pushNamed(Routes.orderDetailsScreenRoute,
                  arguments: order.id);
            },
          ),
        ],
      ),
    );
  }
}
