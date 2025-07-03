import '../../features/RFQ_response/data/models/supplier_quotations_request.dart';
import '../../features/RFQ_response/logic/cubit/rfq_response_cubit.dart';
import '../../features/RFQ_response/ui/screens/manage_rfqs_screen.dart';
import '../../features/RFQ_response/ui/screens/rfq_details_screen.dart';
import '../../features/RFQ_response/ui/screens/rfq_response_screen.dart';
import '../../features/settings/ui/custom_support_screen.dart';
import '../../features/notifications/ui/notifications_tab.dart';
import '../../features/pre_login/logic/cubit/pre_login_cubit.dart';
import '../../features/pre_login/ui/pre_login_screen.dart';

import '../../features/orders/logic/cubit/order_details_cubit.dart';
import '../../features/orders/ui/order_details_screen.dart';
import '../../features/profile/logic/supplier_profile_cubit.dart';

import '../widgets/hero_image_view.dart';
import '../../features/edit_product/logic/cubit/edit_product_cubit.dart';
import '../../features/edit_product/ui/edit_product_screen.dart';
import '../../features/product_details/logic/cubit/product_details_cubit.dart';
import '../../features/product_details/ui/widgets/product_details_bloc_consumer.dart';

import '../../features/add_product/logic/cubit/add_product_cubit.dart';
import '../../features/manage_products/ui/manage_products_screen.dart';

import '../../features/add_product/ui/add_product_screen.dart';
import '../../features/main/logic/cubit/main_cubit.dart';

import '../../features/profile/ui/profile_screen.dart';

import '../../features/reset_password/logic/cubit/reset_password_cubit.dart';
import '../../features/reset_password/ui/forgot_password_ui/forget_password_screen.dart';
import '../../features/reset_password/ui/otp_verification_ui/otp_screen.dart';
import '../../features/reset_password/ui/reset_password_ui/reset_password_screen.dart';
import '../../features/signup/ui/signup_screen.dart';

import '../../features/signup/logic/cubit/signup_cubit.dart';
import '../di/dependency_injection.dart';
import '../helpers/animations/custom_animations_builder.dart';
import '../../features/main/ui/main_screen.dart';
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

      case Routes.preLoginScreenRoute:
        return CustomAnimationsBuilder.buildSlideRoute(
          screen: BlocProvider(
            create: (context) => PreLoginCubit(getIt()),
            child: const PreLoginScreen(),
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

      case Routes.mainScreenRoute:
        return CustomAnimationsBuilder.buildFadeTransition(
          screen: BlocProvider(
            create: (context) => MainCubit(),
            child: const MainScreen(),
          ),
          settings: settings,
        );
      case Routes.profileScreenRoute:
        return CustomAnimationsBuilder.slideFromLeft(
          screen: BlocProvider(
            create: (context) =>
                SupplierProfileCubit(getIt())..getSupplierProfileData(),
            child: const ProfileScreen(),
          ),
          settings: settings,
        );

      case Routes.heroImageView:
        final imageUrl = arguments as String;
        return CustomAnimationsBuilder.buildWidget(
          screen: HeroImageView(imageUrl: imageUrl),
          settings: settings,
        );
      case Routes.notificationScreenRoute:
        return CustomAnimationsBuilder.slideFromLeft(
          screen: const NotificationsTab(),
          settings: settings,
        );

      case Routes.editProductScreenRoute:
        final productId = arguments as int;
        return CustomAnimationsBuilder.slideFromLeft(
          screen: BlocProvider(
            create: (context) =>
                EditProductCubit(getIt())..fetchProductDataForEdit(productId),
            child: const EditProductBlocConsumer(),
          ),
          settings: settings,
        );
      case Routes.manageProductsScreenRoute:
        return CustomAnimationsBuilder.slideFromLeft(
          screen: const ManageProductsScreen(),
          settings: settings,
        );
      case Routes.manageRFQsScreenRoute:
        return CustomAnimationsBuilder.slideFromLeft(
          screen: const ManageRFQsScreen(),
          settings: settings,
        );

      case Routes.customerSuppoerScreenRoute:
        return CustomAnimationsBuilder.slideFromLeft(
          screen: const CustomSupportScreen(),
          settings: settings,
        );

      case Routes.rfqResponseScreenRoute:
        final args = settings.arguments as Map<String, dynamic>;

        final rfqId = args['rfq'] as SupplierRFQ;
        final cubit = args['cubit'] as RFQResponseCubit;
        return CustomAnimationsBuilder.slideFromLeft(
          screen: BlocProvider.value(
            value: cubit,
            child: RFQResponseScreen(rfq: rfqId),
          ),
          settings: settings,
        );
      case Routes.rfqDetailsScreenRoute:
        final args = settings.arguments as Map<String, dynamic>;
        final cubit = args['cubit'] as RFQResponseCubit;
        final rfq = args['rfq'] as SupplierRFQ;
        return CustomAnimationsBuilder.slideFromLeft(
          screen: BlocProvider.value(
            value: cubit,
            child: RFQDetailsScreen(rfq: rfq),
          ),
          settings: settings,
        );

      case Routes.orderDetailsScreenRoute:
        final orderId = arguments as int;
        return CustomAnimationsBuilder.slideFromLeft(
          screen: BlocProvider(
            create: (_) =>
                OrderDetailsCubit(getIt())..fetchOrderDetails(orderId),
            child: const OrderDetailsScreen(),
          ),
          settings: settings,
        );

      case Routes.productDetailsScreenRoute:
        final productId = arguments as int;
        return CustomAnimationsBuilder.buildFadeTransition(
          screen: BlocProvider(
              create: (context) => ProductDetailsCubit(getIt())
                ..emitProductDetailsState(productId),
              child: ProductDetailsBlocConsumer(productId: productId)),
          settings: settings,
        );
      case Routes.addProductScreenRoute:
        return CustomAnimationsBuilder.slideFromLeft(
          screen: BlocProvider(
            create: (context) => AddProductCubit(getIt()),
            child: const AddProductScreen(),
          ),
          settings: settings,
        );
      case Routes.signUpRoute:
        return CustomAnimationsBuilder.slideFromLeft(
          screen: BlocProvider(
            create: (context) => SignupCubit(getIt()),
            child: const SignupScreen(),
          ),
          settings: settings,
        );

      case Routes.forgetPasswordScreenRoute:
        return CustomAnimationsBuilder.slideFromLeft(
          screen: BlocProvider(
            create: (context) => ResetPasswordCubit(getIt()),
            child: const ForgetPasswordScreen(),
          ),
          settings: settings,
        );
      case Routes.otpScreenRoute:
        final resetPasswordCubit = arguments as ResetPasswordCubit;
        return CustomAnimationsBuilder.slideFromLeft(
          screen: BlocProvider.value(
            value: resetPasswordCubit,
            child: const OtpScreen(),
          ),
          settings: settings,
        );
      case Routes.resetPasswordScreenRoute:
        final resetPasswordCubit = arguments as ResetPasswordCubit;
        return CustomAnimationsBuilder.slideFromLeft(
          screen: BlocProvider.value(
            value: resetPasswordCubit,
            child: const ResetPasswordScreen(),
          ),
          settings: settings,
        );

      default:
        return null;
    }
  }
}
