import 'package:connect_chain/features/reset_password/ui/forgot_password_ui/forgot_password_screen.dart';

import '../../features/reset_password/ui/otp_verification_ui/otp_verification_screen.dart';
import '../di/dependency_injection.dart';
import '../helpers/animations/custom_animations_builder.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/login/logic/login_cubit.dart';
import '../../features/onboarding/logic/cubit/onboarding_cubit.dart';
import '../../features/onboarding/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/ui/login_screen.dart';
import 'routes.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.loginRoute:
        return CustomAnimationsBuilder.slideFromLeft(
          screen: BlocProvider(
            create: (context) => LoginCubit(getIt()),
            child: const LoginScreen(),
          ),
          settings: settings,
        );

      case Routes.onboardingRoute:
        return CustomAnimationsBuilder.buildFadeTransition(
          screen: BlocProvider(
            create: (context) => OnboardingCubit(),
            child: const OnboardingScreen(),
          ),
          settings: settings,
        );

      case Routes.homeRoute:
        return CustomAnimationsBuilder.buildFadeTransition(
          screen: const HomeScreen(),
          settings: settings,
        );

      case Routes.forgotPassword:
        return CustomAnimationsBuilder.slideFromLeft(
          screen: const ForgotPasswordScreen(),
          settings: settings,
        );
      case Routes.otpVerification:
        return CustomAnimationsBuilder.slideFromLeft(
          screen: OtpVerificationScreen(
            email: arguments as String,
          ),
          settings: settings,
        );

      default:
        return null;
    }
  }
}
