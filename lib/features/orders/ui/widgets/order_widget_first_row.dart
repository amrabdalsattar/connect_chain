part of '../orders_tab.dart';

class OrderWidgetFirstRow extends StatelessWidget {
  const OrderWidgetFirstRow({
    super.key,
    required this.orderStatus,
  });
  final OrderStatus orderStatus;

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
              '#123456B4324D',
              style: AppTextStyles.cairoWhiteBold12
                  .copyWith(color: ColorsHelper.gray),
            ),
            Text(
              '10 jan 2025',
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
