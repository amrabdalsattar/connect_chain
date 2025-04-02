import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/features/onboarding/data/models/onboarding_page_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingCard extends StatelessWidget {
  final OnboardingPageModel onboardingPageModel;
  const OnboardingCard({super.key, required this.onboardingPageModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(onboardingPageModel.imagePath),
        verticalSpace(35),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.connectChainLogo,
              width: 32.w,
              height: 32.h,
            ),
            horizontalSpace(18),
            Text(
              onboardingPageModel.title,
              style: AppTextStyles.fontPrimaryBold20,
            )
          ],
        ),
        verticalSpace(18),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Text(
            onboardingPageModel.description,
            style: AppTextStyles.fontFadedBlackRegular16,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
