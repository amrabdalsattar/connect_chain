part of '../screens/rfq_response_screen.dart';

class RFQLineItemList extends StatelessWidget {
  const RFQLineItemList({super.key, required this.rfqCubit});
  final RFQResponseCubit rfqCubit;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 1,
      separatorBuilder: (context, index) => const VerticalSpace(height: 16),
      itemBuilder: (context, index) {
        return RFQLineItemCard(
          lineItem: rfqCubit.lineItem!,
          index: index,
          onRemove: () {
            context.read<RFQResponseCubit>().removeLineItem();
          },
        );
      },
    );
  }
}
