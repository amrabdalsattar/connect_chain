import '../../../core/widgets/custom_button.dart';
import '../logic/cubit/onboarding_cubit.dart';
import 'widgets/onboarding_card.dart';
import 'widgets/page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OnboardingCubit, int>(
        bloc: context.read<OnboardingCubit>(),
        builder: (context, index) => SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: Column(
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(-1, 0),
                        end: Offset.zero,
                      ).animate(
                        CurvedAnimation(
                            parent: animation, curve: Curves.easeInExpo),
                      ),
                      child: child,
                    );
                  },
                  child: OnboardingCard(
                    key: ValueKey<int>(index),
                    onboardingPageModel:
                        context.read<OnboardingCubit>().onboardingPages[index],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding:
                      EdgeInsets.only(left: 32.w, right: 32.w, bottom: 57.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PageIndicator(
                        length: context
                            .read<OnboardingCubit>()
                            .onboardingPages
                            .length,
                        activeIndex: index,
                      ),
                      CustomButton(
                        title: 'التالي',
                        width: 155.w,
                        elevation: 2,
                        onTap: () {
                          context
                              .read<OnboardingCubit>()
                              .increasePageIndex(context);
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
