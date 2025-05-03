part of '../orders_tab.dart';

class OrderWidgetIcon extends StatelessWidget {
  const OrderWidgetIcon({
    super.key,
    required this.orderStatus,
  });
  final OrderStatus orderStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: orderStatus.color.withValues(alpha: 0.09),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: SvgPicture.asset(
        orderStatus.icon,
        height: 16.h,
        width: 16.w,
        fit: BoxFit.cover,
      ),
    );
  }
}
