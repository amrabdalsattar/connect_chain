import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors_helper.dart';
import '../../logic/supplier_profile_cubit.dart';

class UserDataTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final bool enabled;
  const UserDataTextField({
    super.key,
    required this.labelText,
    this.controller,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: TextFormField(
        controller: controller,
        onChanged: (value) {
          if (!(context.read<SupplierProfileCubit>().isEditModeOn)) {
            context.read<SupplierProfileCubit>().startUpdatingProfile();
          }
        },
        enabled: enabled,
        decoration: InputDecoration(
          label: Text(
            labelText,
            style: const TextStyle(fontSize: 13),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 0.5, color: ColorsHelper.dividerGray),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorsHelper.primaryColor,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
