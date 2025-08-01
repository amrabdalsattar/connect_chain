part of '../screens/rfq_response_screen.dart';

class AddLineItemButton extends StatelessWidget {
  const AddLineItemButton({super.key, required this.rfqCubit});
  final RFQResponseCubit rfqCubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: () async {
          if (rfqCubit.lineItem == null) {
            final selectedProduct = await showDialog<ProductDataModel>(
              context: context,
              builder: (context) => const ProductSelectionDialog(),
            );
            rfqCubit.addLineItem(selectedProduct);
          } else {
            DialogsHelper.showErrorDialog(
                context, 'Can\'t add more than 1 product');
          }
        },
        icon: const Icon(Icons.add),
        label: const Text('أضافة منتج'),
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          side: const BorderSide(color: ColorsHelper.primaryColor),
          foregroundColor: ColorsHelper.primaryColor,
        ),
      ),
    );
  }
}
