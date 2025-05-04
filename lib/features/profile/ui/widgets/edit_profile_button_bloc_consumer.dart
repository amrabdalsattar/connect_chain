import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';

import '../../../../core/helpers/dialogs_helper.dart';
import '../../logic/supplier_profile_cubit.dart';
import '../../logic/supplier_profile_state.dart';
import 'edit_profile_button.dart';

class EditProfileButtonBlocConsumer extends StatelessWidget {
  const EditProfileButtonBlocConsumer({super.key});

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
            current is ProfileUpdateSuccess ||
            current is ProfileUpdateFailure,
        listener: (context, state) {
          switch (state) {
            case ProfileUpdateFailure():
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
        builder: (_, state) =>
            EditProfileButton(isLoading: state is ProfileUpdateLoading),
      ),
    );
  }
}
