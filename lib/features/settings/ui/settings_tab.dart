import '../../../core/theming/colors_helper.dart';
import 'widgets/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../main/logic/cubit/main_cubit.dart';
import 'widgets/legal_and_policies_section.dart';
import 'widgets/logout_button.dart';
import 'widgets/rights_text.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) =>
          context.read<MainCubit>().toggleCurrentTabIndex = 0,
      child: Scaffold(
        backgroundColor: ColorsHelper.homeScaffoldColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
            child: const CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: ProfileCard(),
                ),
                SliverToBoxAdapter(
                  child: LegalAndPoliciesSection(),
                ),
                SliverToBoxAdapter(
                  child: LogoutButton(),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: RightsText(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
