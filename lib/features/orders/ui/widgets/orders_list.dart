part of '../orders_tab.dart';

class Orderslist extends StatelessWidget {
  const Orderslist({
    super.key,
    required this.orders,
  });

  final List<OrderModel> orders;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: orders.length,
      separatorBuilder: (_, __) => verticalSpace(24),
      itemBuilder: (context, index) {
        return OrderWidget(order: orders[index]);
      },
    );
  }
}
