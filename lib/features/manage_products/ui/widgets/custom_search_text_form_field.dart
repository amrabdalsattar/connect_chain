import '../../../../core/helpers/app_images.dart';
import '../../../../core/theming/colors_helper.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomSearchTextFormField extends StatelessWidget {
  const CustomSearchTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      filled: false,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32),
        borderSide: const BorderSide(
          color: ColorsHelper.primaryColor,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32),
        borderSide: const BorderSide(
          color: ColorsHelper.liteGray,
        ),
      ),
      prefixIconPath: AppImages.searchIcon,
      hintText: 'بحث',
      controller: TextEditingController(),
      validator: (value) {},
    );
  }
}
