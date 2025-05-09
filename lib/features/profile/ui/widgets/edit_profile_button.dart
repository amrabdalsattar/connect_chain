import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors_helper.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../logic/supplier_profile_cubit.dart';

class EditProfileButton extends StatelessWidget {
  final bool isLoading;
  const EditProfileButton({super.key, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsHelper.white,
      width: double.infinity,
      height: 100.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 22.h),
        child: CustomButton(
          onTap: () {
            if (context.read<SupplierProfileCubit>().isEditModeOn) {
              context.read<SupplierProfileCubit>().updateSupplierProfile();
            }
          },
          isLoading: isLoading,
          title: 'حفظ التغييرات',
          width: double.infinity,
          borderColor: ColorsHelper.white,
          color: context.read<SupplierProfileCubit>().isEditModeOn
              ? ColorsHelper.primaryColor
              : ColorsHelper.semiGray,
        ),
      ),
    );
  }
}
