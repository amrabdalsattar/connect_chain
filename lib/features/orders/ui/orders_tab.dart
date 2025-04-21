import 'package:connect_chain/core/di/dependency_injection.dart';
import 'package:connect_chain/core/helpers/extensions.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';

import 'package:connect_chain/core/widgets/custom_app_bar.dart';
import 'package:connect_chain/core/widgets/custom_chip_.dart';
import 'package:connect_chain/core/widgets/custom_empty_widget.dart';
import 'package:connect_chain/core/widgets/custom_error_widget.dart';
import 'package:connect_chain/core/widgets/custom_loading_indicator.dart';
import 'package:connect_chain/core/widgets/shimmer_loading_list.dart';
import 'package:connect_chain/features/manage_products/ui/widgets/custom_search_text_form_field.dart';
import 'package:connect_chain/features/orders/data/models/order_response_model.dart';
import 'package:connect_chain/features/orders/logic/cubit/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../main/logic/cubit/main_cubit.dart';
// parts of orders Tab

part 'widgets/order_status_list.dart';
part 'widgets/order_widget_text.dart';
part 'widgets/orders_widget.dart';
part 'widgets/orders_widget_button.dart';
part 'widgets/order_widget_status_chip.dart';
part 'widgets/order_widget_icon.dart';
part 'widgets/order_widget_first_row.dart';
part 'widgets/orders_bloc_builder.dart';
part 'widgets/orders_list.dart';

// Order Status Enum
enum OrderStatus {
  pending, // قيد التنفيذ
  completed, // مكتملة
  rejected // مرفوضة
}

class OrdersTab extends StatelessWidget {
  const OrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrdersCubit(getIt())..fetchSupplierOrders(),
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) =>
            context.read<MainCubit>().toggleCurrentTabIndex = 0,
        child: Scaffold(
          appBar: const CustomAppBar(
            title: 'الطلبات',
            hideBackButton: true,
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: Column(
                children: [
                  const CustomSearchTextFormField(),
                  verticalSpace(23),
                  const OrdersStatusList(),
                  verticalSpace(24),
                  const OrdersList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
