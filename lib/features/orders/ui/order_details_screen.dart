import '../../../core/helpers/extensions.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theming/app_text_styles.dart';
import '../../../core/theming/colors_helper.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_error_widget.dart';
import '../../../core/widgets/custom_image_widget.dart';
import '../../../core/widgets/custom_loading_indicator.dart';
import '../data/models/order_details_response_model.dart';
import '../logic/cubit/order_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// OrderDetails Parts
part 'widgets/order_details_text.dart';
part 'widgets/order_products_details_section.dart';
part 'widgets/order_details_product_tile.dart';
part 'widgets/order_details_customer_details_section.dart';
part 'widgets/order_details_section.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'تفاصيل الطلب'),
      body: BlocBuilder<OrderDetailsCubit, OrderDetailsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            success: (ordersResponseModel) {
              return OrderDetailsBody(orderDetailsModel: ordersResponseModel);
            },
            loading: () => const CustomLoadingIndicator(),
            error: (apiErrorModel) => CustomErrorWidget(
                errorMessage:
                    apiErrorModel.getErrorMessages() ?? 'خطأ غير متوقع'),
          );
        },
      ),
    );
  }
}
