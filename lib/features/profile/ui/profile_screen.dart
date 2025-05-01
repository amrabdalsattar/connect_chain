import 'package:connect_chain/core/widgets/imaged_error.dart';

import '../../../core/helpers/cache/shared_preferences_helper.dart';
import '../../../core/helpers/cache/shared_preferences_keys.dart';
import '../../../core/helpers/constant_string.dart';
import '../../../core/widgets/custom_error_widget.dart';
import '../../../core/widgets/custom_loading_indicator.dart';
import '../data/models/profile_response_model.dart';
import '../logic/supplier_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/app_text_styles.dart';
import '../../../core/theming/colors_helper.dart';
import '../../../core/widgets/custom_back_button.dart';
import '../data/models/profile_item_model.dart';
import '../data/models/profile_section_model.dart';
import '../logic/supplier_profile_state.dart';
import 'widgets/profile_header.dart';

part 'widgets/profile_body.dart';
part 'widgets/profile_details_list_tile.dart';
part 'widgets/profile_details_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: BlocBuilder<SupplierProfileCubit, SupplierProfileState>(
            buildWhen: (previous, current) =>
                current is SupplierProfileErrorState ||
                current is SupplierProfileLoadingState ||
                current is SupplierProfileSuccessState,
            builder: (context, state) {
              switch (state) {
                case SupplierProfileLoadingState():
                  return CustomLoadingIndicator();
                case SupplierProfileErrorState():
                  return ImagedError(
                      errorMessage: state.apiErrorModel.getErrorMessages()!);
                case SupplierProfileSuccessState():
                  return ProfileBody(
                    supplierData: state.supplierData,
                  );
                default:
                  return CustomErrorWidget(
                      errorMessage: ConstantString.unknownError);
              }
            },
          ),
        ),
      ),
    );
  }
}
