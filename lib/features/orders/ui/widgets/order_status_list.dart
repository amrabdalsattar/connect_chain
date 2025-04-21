part of '../orders_tab.dart';

class OrdersStatusList extends StatefulWidget {
  const OrdersStatusList({
    super.key,
  });

  @override
  State<OrdersStatusList> createState() => _OrdersStatusListState();
}

class _OrdersStatusListState extends State<OrdersStatusList> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersCubit, OrdersState>(
      builder: (context, state) {
        if (state is fetchOrderDetailsLoading) {
          return ShimmerLoadingList(
              itemCount: 4,
              containerWidth: 30.w,
              containerHeight: 46.h,
              scrollDirection: Axis.horizontal,
              listHeight: double.infinity);
        }
        return SizedBox(
            height: 46.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomChip(
                  isSelected: selectedIndex == index,
                  text: OrderStatus.values[index].label,
                  onTap: () {
                    setState(() {
                      if (selectedIndex == index) {
                        // To Deselect the stat2us type
                        selectedIndex = null;
                      } else {
                        // to selecte the status type
                        selectedIndex = index;
                      }
                      context
                          .read<OrdersCubit>()
                          .changeFilteredStatus(selectedIndex);
                    });
                  },
                );
              },
              separatorBuilder: (context, index) {
                return horizontalSpace(24);
              },
              itemCount: OrderStatus.values.length,
            ));
      },
    );
  }
}
