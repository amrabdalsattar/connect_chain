import '../../../core/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/app_images.dart';
import '../../../core/helpers/cache/shared_preferences_helper.dart';
import '../../../core/helpers/cache/shared_preferences_keys.dart';
import '../../../core/helpers/constant_string.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theming/app_text_styles.dart';
import '../../../core/theming/colors_helper.dart';
import '../../../core/widgets/custom_error_widget.dart';
import '../../../core/widgets/custom_loading_indicator.dart';
import '../../../core/widgets/imaged_error.dart';
import '../logic/supplier_profile_cubit.dart';
import '../logic/supplier_profile_state.dart';
import 'widgets/edit_profile_button.dart';
import 'widgets/profile_body.dart';

part 'widgets/profile_header.dart';
part 'widgets/profile_bloc_builder.dart';
part 'widgets/sliver_profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: const CustomScrollView(
                slivers: [
                  SliverProfileHeader(),
                  SliverToBoxAdapter(
                    child: ProfileBlocBuilder(),
                  ),
                ],
              ),
            ),
            const EditProfileButton(),
          ],
        ),
      ),
    );
  }
}
