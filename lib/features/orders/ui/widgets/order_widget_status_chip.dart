part of '../orders_tab.dart';

class OrderWidgetStatusChip extends StatelessWidget {
  const OrderWidgetStatusChip({
    super.key,
    required this.orderStatus,
  });

  final OrderStatus orderStatus;

  @override
  Widget build(BuildContext context) {
    final bool isPending = orderStatus == OrderStatus.pending;

    return Container(
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: orderStatus.color.withValues(alpha: 0.09),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          width: 1.w,
          color: isPending ? ColorsHelper.transparent : orderStatus.color,
        ),
      ),
      child: Text(
        orderStatus.label,
        style: AppTextStyles.cairoGrayMedium11.copyWith(
          color: isPending ? null : orderStatus.color,
        ),
      ),
    );
  }
}
