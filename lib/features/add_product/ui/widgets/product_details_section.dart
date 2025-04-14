import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/custom_dropdown_button.dart';
import '../../../../core/widgets/field_row.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/labeled_field.dart';
import '../../../../core/helpers/spacing.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
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
                controller: TextEditingController(),
                validator: (p0) {},
              ),
            ),
            right: LabeledField(
              label: 'فئة المنتج',
              field: CustomDropdownButton(
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
                onChanged: (p0) {},
                hintText: 'نوع المنتج',
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
                controller: TextEditingController(),
                validator: (p0) {},
              ),
            ),
            right: LabeledField(
              label: 'الكمية',
              field: CustomTextFormField(
                hintText: 'الكمية ',
                controller: TextEditingController(),
                validator: (p0) {},
              ),
            ),
          ),

          verticalSpace(16),
          // Start of the SKU Row
          LabeledField(
              label: 'SKU',
              alertMessage:
                  'رقم فريد يُستخدم لتحديد المنتج في المخزن. مثال: TSHIRT-RED-LARGE. يُفضّل استخدام حروف وأرقام فقط (بدون مسافات).',
              field: CustomTextFormField(
                hintText: 'SKU',
                controller: TextEditingController(),
                validator: (p0) {},
              )),
          verticalSpace(16),
          // Start of the Inventory  Row
          LabeledField(
              label: 'الحد الاني للمخزون',
              alertMessage:
                  ' أقل كمية يمكن ان توجد في المخزون لهذا المنتج ، اذا وصل المخزون لهذا الحد سوف يتم ارسال اشعارات تنبيه اليكم  ',
              field: CustomTextFormField(
                hintText: 'الحد الاني للمخزون',
                controller: TextEditingController(),
                validator: (p0) {},
              )),
          verticalSpace(16),
          // Start of the Description Row
          LabeledField(
              label: 'الوصف',
              field: CustomTextFormField(
                hintText: '',
                controller: TextEditingController(),
                validator: (p0) {},
                maxLines: 4,
              )),
          verticalSpace(16),
        ],
      ),
    );
  }
}
