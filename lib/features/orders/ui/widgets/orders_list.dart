part of '../orders_tab.dart';

class SupplierOrdersList extends StatelessWidget {
  const SupplierOrdersList({
    super.key,
    required this.orders,
  });

  final List<OrderModel> orders;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: orders.length,
      separatorBuilder: (_, __) => const VerticalSpace(height: 24),
      itemBuilder: (context, index) {
        return OrderWidget(order: orders[index]);
      },
    );
  }
}
