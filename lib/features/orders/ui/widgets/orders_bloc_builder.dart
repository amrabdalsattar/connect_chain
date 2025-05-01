part of '../orders_tab.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: BlocBuilder<OrdersCubit, OrdersState>(
          builder: (context, state) => state.when(
            statusChanged: (_) => const SizedBox.shrink(),
            initial: () => const SizedBox.shrink(),
            loading: () => const ShimmerLoadingList(
              itemCount: 3,
              containerWidth: double.infinity,
              containerHeight: 300,
              scrollDirection: Axis.vertical,
              listHeight: double.infinity,
            ),
            error: (error) => CustomErrorWidget(
              errorMessage: error.getErrorMessages() ?? 'حدث خطأ غير متوقع',
            ),
            success: (response) => _buildOrdersList(response),
          ),
        ),
      ),
    );
  }

  // Widget Builder to make Code Readable
  Widget _buildOrdersList(List<OrderModel> orders) {
    if (orders.isEmpty) {
      return const CustomEmptyWidget(message: 'لم يتم العثور علي طلبات');
    }

    return Orderslist(orders: orders);
  }
}
