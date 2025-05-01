part of '../add_product_screen.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key, required this.addProductCubit});

  final AddProductCubit addProductCubit;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: addProductCubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'معلومات عن المنتج',
            style: AppTextStyles.cairoBlackSemiBold16,
          ),
          // Start of the First Row
          verticalSpace(16),
          LabeledFieldRow(
            left: LabeledField(
              label: 'أسم المنتج',
              field: CustomTextFormField(
                hintText: 'أسم المنتج',
                controller: addProductCubit.nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'الرجاء إدخال اسم المنتج';
                  }
                },
              ),
            ),
            right: LabeledField(
              label: 'فئة المنتج',
              field: CustomDropdownButton(
                onChanged: (value) {
                  addProductCubit.setCategory(value ?? '');
                },
                value: null,
                items: List.generate(
                    categories.length,
                    (index) => DropdownMenuItem(
                          value: categories[index],
                          child: Text(categories[index]),
                        )),
                hintText: 'نوع المنتج',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'الرجاء إدخال نوع المنتج';
                  }
                },
              ),
            ),
          ),

          // Start of the Second Row
          verticalSpace(16),
          LabeledFieldRow(
            left: LabeledField(
              label: 'السعر',
              field: CustomTextFormField(
                hintText: 'السعر',
                controller: addProductCubit.priceController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'الرجاء إدخال السعر';
                  }
                },
              ),
            ),
            right: LabeledField(
              label: 'الكمية',
              field: CustomTextFormField(
                hintText: 'الكمية ',
                keyboardType: TextInputType.number,
                controller: addProductCubit.quantityController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'الرجاء إدخال الكمية';
                  }
                },
              ),
            ),
          ),

          verticalSpace(16),

          LabeledField(
              label: 'الحد الاني للمخزون',
              alertMessage:
                  ' أقل كمية يمكن ان توجد في المخزون لهذا المنتج ، اذا وصل المخزون لهذا الحد سوف يتم ارسال اشعارات تنبيه اليكم  ',
              field: CustomTextFormField(
                hintText: 'الحد الاني للمخزون',
                controller: addProductCubit.minimumStockController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'الرجاء إدخال الحد الاني للمخزون';
                  }
                },
              )),
          verticalSpace(16),
          // Start of the Description Row
          LabeledField(
              label: 'الوصف',
              field: CustomTextFormField(
                hintText: '',
                controller: addProductCubit.descriptionController,
                keyboardType: TextInputType.multiline,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'الرجاء إدخال الوصف';
                  }
                },
                maxLines: 4,
              )),
          verticalSpace(16),
        ],
      ),
    );
  }
}

List<String> categories = [
  'الإلكترونيات',
  'الأزياء',
  'المواد الغذائية',
  'أخرى'
];
