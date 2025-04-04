import 'package:connect_chain/core/di/dependency_injection.dart';
import 'package:connect_chain/core/helpers/animations/custom_animations_builder.dart';
import 'package:connect_chain/features/home/ui/home_screen.dart';
import 'package:connect_chain/features/login/logic/login_cubit.dart';
import 'package:connect_chain/features/onboarding/logic/cubit/onboarding_cubit.dart';
import 'package:connect_chain/features/onboarding/ui/onboarding_screen.dart';
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

      default:
        return null;
    }
  }
}
