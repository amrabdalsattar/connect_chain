part of '../orders_tab.dart';

class OrdersStatusList extends StatefulWidget {
  const OrdersStatusList({
    super.key,
  });

  @override
  State<OrdersStatusList> createState() => _OrdersStatusListState();
}

class _OrdersStatusListState extends State<OrdersStatusList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          ordersTabs.length,
          (index) => CustomChip(
            isSelected: selectedIndex == index,
            text: ordersTabs[index],
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

List<String> ordersTabs = ['الكل', 'قيد التنفيذ ', 'مكتملة', 'مرفوضة'];
