import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_stepper/easy_stepper.dart';

import '../../../../core/theming/colors_helper.dart';

class RFQResponseStepper extends StatelessWidget {
  final int currentStep;
  final Function(int) onStepTapped;

  const RFQResponseStepper({
    super.key,
    required this.currentStep,
    required this.onStepTapped,
  });

  @override
  Widget build(BuildContext context) {
    final steps = [
      {'title': 'التسعير', 'icon': Icons.attach_money},
      {'title': 'الشروط', 'icon': Icons.rule},
      {'title': 'مراجعة', 'icon': Icons.rate_review},
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: EasyStepper(
        activeStep: currentStep,
        onStepReached: onStepTapped,
        stepShape: StepShape.circle,
        lineStyle: LineStyle(
          lineLength: 100.w,
          finishedLineColor: ColorsHelper.primaryColor,
          lineThickness: 1,
        ),
        stepRadius: 18.w,
        activeStepBorderColor: ColorsHelper.primaryColor,
        activeStepTextColor: ColorsHelper.primaryColor,
        finishedStepBorderColor: ColorsHelper.primaryColor,
        finishedStepTextColor: ColorsHelper.primaryColor,
        finishedStepBackgroundColor: ColorsHelper.primaryColor,
        activeStepBackgroundColor: ColorsHelper.primaryColor,
        unreachedStepBorderColor: ColorsHelper.dividerGray,
        unreachedStepTextColor: ColorsHelper.secondaryGray,
        unreachedStepBackgroundColor: ColorsHelper.dividerGray,
        showLoadingAnimation: false,
        showStepBorder: true,
        steps: List.generate(
            steps.length,
            (index) => EasyStep(
                  customStep: currentStep > index
                      ? Icon(Icons.check, color: Colors.white, size: 16.sp)
                      : Icon(steps[index]['icon'] as IconData,
                          color: ColorsHelper.white, size: 16.sp),
                  title: steps[index]['title'] as String,
                )),
      ),
    );
  }
}
