import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';

import '../../../../core/helpers/dialogs_helper.dart';
import '../../../../core/theming/colors_helper.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../logic/supplier_profile_cubit.dart';
import '../../logic/supplier_profile_state.dart';

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.h,
      left: 0,
      right: 0,
      child: BlocConsumer<SupplierProfileCubit, SupplierProfileState>(
        listenWhen: (previous, current) =>
            current is ProfileUpdateInitialState ||
            current is ProfileUpdateLoading ||
            current is ProfileUpdatedSuccess ||
            current is ProfileUpdatedFailure,
        listener: (context, state) {
          switch (state) {
            case ProfileUpdatedFailure():
              DialogsHelper.showToastificationMessage(
                  context: context,
                  title: 'خطأ',
                  description: state.apiErrorModel.getErrorMessages()!,
                  type: ToastificationType.error,
                  alignment: Alignment.topCenter);
            default:
              return;
          }
        },
        builder: (_, state) => Container(
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
              isLoading: state is ProfileUpdateLoading,
              title: 'حفظ التغييرات',
              width: double.infinity,
              borderColor: ColorsHelper.white,
              color: context.read<SupplierProfileCubit>().isEditModeOn
                  ? ColorsHelper.primaryColor
                  : ColorsHelper.semiGray,
            ),
          ),
        ),
      ),
    );
  }
}
