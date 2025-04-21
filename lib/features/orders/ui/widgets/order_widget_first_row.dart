part of '../orders_tab.dart';

class OrderWidgetFirstRow extends StatelessWidget {
  const OrderWidgetFirstRow({
    super.key,
    required this.orderStatus,
    required this.orderDate,
    required this.orderId,
  });
  final OrderStatus orderStatus;
  final String orderDate;
  final String orderId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OrderWigetIcon(
          orderStatus: orderStatus,
        ),
        horizontalSpace(8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '#$orderId',
              style: AppTextStyles.cairoWhiteBold12
                  .copyWith(color: ColorsHelper.gray),
            ),
            Text(
              orderDate,
              style: AppTextStyles.carioGrayRegular10,
            )
          ],
        ),
        const Spacer(),
        OrderWidgetStatusChip(orderStatus: orderStatus)
      ],
    );
  }
}
