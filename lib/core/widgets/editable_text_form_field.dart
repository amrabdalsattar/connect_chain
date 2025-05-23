import 'package:flutter/material.dart';

import '../helpers/app_images.dart';
import 'custom_icon_button.dart';
import 'custom_text_form_field.dart';

class EditableTextFormField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final int? maxLines;

  const EditableTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.validator,
    this.maxLines,
  });

  @override
  State<EditableTextFormField> createState() => _EditableTextFormFieldState();
}

class _EditableTextFormFieldState extends State<EditableTextFormField> {
  bool isReadOnly = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      maxLines: widget.maxLines ?? 1,
      hintText: widget.hintText,
      controller: widget.controller,
      validator: widget.validator,
      isReadOnly: isReadOnly,
      suffixIcon: CustomIconButton(
        onTap: () {
          setState(() {
            isReadOnly = !isReadOnly;
          });
        },
        iconPath: AppImages.editIcon,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
