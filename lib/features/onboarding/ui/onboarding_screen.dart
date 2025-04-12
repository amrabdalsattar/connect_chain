import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/widgets/custom_button.dart';
import 'package:connect_chain/features/onboarding/logic/cubit/onboarding_cubit.dart';
import 'package:connect_chain/features/onboarding/ui/widgets/onboarding_card.dart';
import 'package:connect_chain/features/onboarding/ui/widgets/page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OnboardingCubit>();
    final pages = cubit.onboardingPages;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            verticalSpace(60),
            Expanded(
              child: PageView.builder(
                controller: cubit.pageController,
                itemCount: pages.length,
                onPageChanged: cubit.updatePageIndex,
                itemBuilder: (context, index) => OnboardingCard(
                  onboardingPageModel: pages[index],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 32.w, right: 32.w, bottom: 57.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocBuilder<OnboardingCubit, int>(
                    builder: (context, index) => PageIndicator(
                      length: pages.length,
                      activeIndex: index,
                    ),
                  ),
                  CustomButton(
                    title: 'التالي',
                    width: 155.w,
                    elevation: 2,
                    onTap: cubit.nextPage,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
