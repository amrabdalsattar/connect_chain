import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/widgets/imaged_error.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/helpers/dialogs_helper.dart';
import '../../../core/helpers/extensions.dart';
import '../../../core/helpers/spacing.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/colors_helper.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/shimmer_loading_list.dart';
import '../../main/logic/cubit/main_cubit.dart';
import '../data/models/manage_supplier_products_request_model.dart';
import '../data/repos/manage_products_repo.dart';
import 'widgets/custom_add_product_button.dart';
import 'widgets/manage_product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logic/cubit/manage_products_cubit.dart';
import 'widgets/custom_search_text_form_field.dart';
import 'widgets/refresh_button.dart';

// parts of this Widget

part 'widgets/manage_products_list.dart';
part 'widgets/manage_products_bloc_consumer.dart';

class ManageProductsScreen extends StatelessWidget {
  const ManageProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ManageProductsCubit manageProductsCubit =
        ManageProductsCubit(getIt<ManageProductsRepo>());
    return BlocProvider(
      create: (_) => manageProductsCubit..getSupplierProducts(),
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) =>
            context.read<MainCubit>().toggleCurrentTabIndex = 0,
        child: Scaffold(
          floatingActionButton: const CustomAddProductButton(),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          appBar: const CustomAppBar(
            title: 'إدارة المنتجات',
            hideBackButton: true,
          ),
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    verticalSpace(24),
                    CustomSearchTextFormField(
                      onChanged: manageProductsCubit.debounceSearch,
                    ),
                    const RefreshButton(),
                    const ManageProductsBlocConsumer(),
                  ],
                ),
              ),
            ),
          )),
        ),
      ),
    );
  }
}
