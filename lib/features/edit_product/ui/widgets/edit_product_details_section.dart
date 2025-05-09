part of '../edit_product_screen.dart';

class EditProductDetailsSection extends StatelessWidget {
  const EditProductDetailsSection({
    super.key,
    required this.editProductCubit,
  });

  final EditProductCubit editProductCubit;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: editProductCubit.formKey,
      child: Column(
        children: [
          LabeledField(
              label: 'اسم المنتج',
              field: EditableTextFormField(
                hintText: 'اسم المنتج',
                controller: editProductCubit.nameController,
                validator: (value) {
                  return null;
                },
              )),
          const VerticalSpace(height: 16),
          LabeledField(
              label: 'فئة المنتج',
              field: CustomDropdownButton(
                value: '',
                items: const [],
                onChanged: (value) {},
                hintText: 'فئة المنتج',
                validator: (p0) {},
              )),
          const VerticalSpace(height: 16),
          LabeledField(
              label: 'الكمية',
              field: EditableTextFormField(
                hintText: '50',
                controller: editProductCubit.quantityController,
                validator: (p0) {
                  return null;
                },
              )),
          const VerticalSpace(height: 16),
          LabeledField(
              label: 'السعر',
              field: EditableTextFormField(
                hintText: '500.00',
                controller: editProductCubit.priceController,
                validator: (p0) {
                  return null;
                },
              )),
          const VerticalSpace(height: 16),
          LabeledField(
              label: 'SKU',
              field: EditableTextFormField(
                hintText: '1234',
                controller: editProductCubit.skuController,
                validator: (p0) {
                  return null;
                },
              )),
          const VerticalSpace(height: 16),
          LabeledField(
              label: 'الحد الأدنى للمخزون',
              field: EditableTextFormField(
                hintText: '30',
                controller: editProductCubit.minimumStockController,
                validator: (p0) {
                  return null;
                },
              )),
          const VerticalSpace(height: 16),
          LabeledField(
              label: 'الوصف',
              field: EditableTextFormField(
                hintText: 'وصف المنتج',
                controller: editProductCubit.descriptionController,
                maxLines: 4,
                validator: (p0) {
                  return null;
                },
              )),
        ],
      ),
    );
  }
}
