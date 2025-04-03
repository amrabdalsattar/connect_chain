import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/helpers/extensions.dart';
import 'package:connect_chain/core/routing/routes.dart';
import 'package:connect_chain/features/onboarding/data/models/onboarding_page_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<int> {
  OnboardingCubit() : super(0);

  List<OnboardingPageModel> onboardingPages = [
    OnboardingPageModel(
      title: 'كل الموردين في مكان واحد',
      description:
          'نوفر لك شبكة واسعة من الموردين لتتمكن من العثور على المنتجات التي تحتاجها بسهولة، مع خيارات متعددة وأسعار تنافسية لتناسب احتياجات عملك',
      imagePath: AppImages.firstOnboardingPage,
    ),
    OnboardingPageModel(
      title: 'إدارة طلباتك بكل سهولة',
      description:
          'تابع جميع طلباتك من مكان واحد، من تقديم الطلب حتى استلامه، مع إشعارات فورية وتحديثات لحظية لضمان تجربة سلسة ومنظمة',
      imagePath: AppImages.secondOnboardingPage,
    ),
    OnboardingPageModel(
      title: 'تواصل مباشر وسريع',
      description:
          'تواصل مع الموردين مباشرة داخل التطبيق، ناقش تفاصيل الطلبات، اسأل عن المنتجات، واتخذ قرارات مستنيرة بسرعة وسهولة دون أي تعقيدات',
      imagePath: AppImages.thirdOnboardingPage,
    )
  ];

  void increasePageIndex(BuildContext context) {
    if (state < 2) {
      emit(state + 1);
    } else {
      context.pushReplacementNamed(Routes.loginScreen);
    }
  }
}
