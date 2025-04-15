part of '../add_product_screen.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key, required this.addProductCubit});

  final AddProductCubit addProductCubit;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddProductCubit, AddProductState>(
      listenWhen: (previous, current) =>
          current is AddProductLoadingState ||
          current is AddProductErrostate ||
          current is AddProductSuccessState,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => DialogsHelper.showLoading(context),
          error: (apiErrorModel) {
            // Close the loading dialog
            context.pop();
            DialogsHelper.showErrorDialog(
                context, apiErrorModel.getErrorMessages()!);
          },
          success: () {
            // Close the loading dialog
            context.pop();
            DialogsHelper.showSnackBar(context, 'تم إضافة المنتج بنجاح');
            context.pop();
          },
        );
      },
      child: Form(
        key: addProductCubit.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'معلومات عن المنتج',
              style: AppTextStyles.cairoBlackBold16,
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
                  items: const [
                    DropdownMenuItem(
                      value: 'value1',
                      child: Text('value1'),
                    ),
                    DropdownMenuItem(
                      value: 'value2',
                      child: Text('value2'),
                    ),
                  ],
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
                  controller: addProductCubit.qunatityController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'الرجاء إدخال الكمية';
                    }
                  },
                ),
              ),
            ),

            verticalSpace(16),
            // // Start of the SKU Row
            // LabeledField(
            //     label: 'SKU',
            //     alertMessage:
            //         'رقم فريد يُستخدم لتحديد المنتج في المخزن. مثال: TSHIRT-RED-LARGE. يُفضّل استخدام حروف وأرقام فقط (بدون مسافات).',
            //     field: CustomTextFormField(
            //       hintText: 'SKU',
            //       controller: TextEditingController(),
            //       validator: (p0) {},
            //     )),
            // verticalSpace(16),
            // Start of the Inventory  Row
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
      ),
    );
  }
}
