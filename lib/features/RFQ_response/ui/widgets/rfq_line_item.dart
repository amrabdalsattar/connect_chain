part of '../screens/rfq_response_screen.dart';

class RFQLineItemCard extends StatefulWidget {
  final RFQLineItemModel lineItem;
  final int index;
  final VoidCallback onRemove;

  const RFQLineItemCard({
    super.key,
    required this.lineItem,
    required this.index,
    required this.onRemove,
  });

  @override
  State<RFQLineItemCard> createState() => _RFQLineItemCardState();
}

class _RFQLineItemCardState extends State<RFQLineItemCard> {
  late TextEditingController productNameController;
  late TextEditingController productDescriptionController;
  late TextEditingController quantityController;
  late TextEditingController unitPriceController;

  @override
  void initState() {
    super.initState();
    productNameController =
        TextEditingController(text: widget.lineItem.productName);
    productDescriptionController =
        TextEditingController(text: widget.lineItem.productDescription);
    quantityController =
        TextEditingController(text: widget.lineItem.quantity.toString());
    unitPriceController =
        TextEditingController(text: widget.lineItem.unitPrice.toString());

    // Add listeners to update the line item when text changes
    productNameController.addListener(_updateLineItem);
    productDescriptionController.addListener(_updateLineItem);
    quantityController.addListener(_updateLineItem);
    unitPriceController.addListener(_updateLineItem);
  }

  @override
  void dispose() {
    productNameController.dispose();
    productDescriptionController.dispose();
    quantityController.dispose();
    unitPriceController.dispose();
    super.dispose();
  }

  void _updateLineItem() {
    final quantity = int.tryParse(quantityController.text) ?? 0;
    final unitPrice = double.tryParse(unitPriceController.text) ?? 0.0;
    final totalPrice = quantity * unitPrice;

    final updatedLineItem = widget.lineItem.copyWith(
      productName: productNameController.text,
      productDescription: productDescriptionController.text,
      quantity: quantity,
      unitPrice: unitPrice,
      totalPrice: totalPrice,
    );

    context.read<RFQResponseCubit>().updateLineItem(updatedLineItem);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'العنصر رقم ${widget.index + 1}',
                  style: AppTextStyles.cairoBlackBold15,
                ),
                IconButton(
                  icon:
                      const Icon(Icons.delete_outline, color: ColorsHelper.red),
                  onPressed: widget.onRemove,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
            const VerticalSpace(height: 16),
            CustomTextFormField(
              controller: productNameController,
              hintText: 'أدخل اسم المنتج',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'اسم المنتج مطلوب';
                }
                return null;
              },
            ),
            const VerticalSpace(height: 16),
            CustomTextFormField(
              controller: productDescriptionController,
              hintText: 'أدخل وصف المنتج',
              maxLines: 2,
              validator: (value) {},
            ),
            const VerticalSpace(height: 16),
            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    controller: quantityController,
                    hintText: 'أدخل الكمية',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'مطلوب';
                      }
                      if (int.tryParse(value) == null) {
                        return 'رقم غير صالح';
                      }
                      return null;
                    },
                  ),
                ),
                const HorizontalSpace(width: 16),
                Expanded(
                  child: CustomTextFormField(
                    controller: unitPriceController,
                    hintText: 'أدخل السعر',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'مطلوب';
                      }
                      if (double.tryParse(value) == null) {
                        return 'سعر غير صالح';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const VerticalSpace(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'الإجمالي:',
                  style: AppTextStyles.cairoGrayRegular14,
                ),
                Text(
                  '${_calculateTotal()} ر.س',
                  style: AppTextStyles.cairoBlackBold15,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _calculateTotal() {
    final quantity = int.tryParse(quantityController.text) ?? 0;
    final unitPrice = double.tryParse(unitPriceController.text) ?? 0.0;
    final total = quantity * unitPrice;
    return total.toStringAsFixed(2);
  }
}
