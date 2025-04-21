import 'package:connect_chain/core/di/dependency_injection.dart';
import 'package:connect_chain/core/helpers/dialogs_helper.dart';
import 'package:connect_chain/core/helpers/extensions.dart';
import 'package:connect_chain/core/helpers/spacing.dart';

import 'package:connect_chain/core/routing/routes.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/core/widgets/custom_app_bar.dart';
import 'package:connect_chain/core/widgets/custom_empty_widget.dart';
import 'package:connect_chain/core/widgets/custom_error_widget.dart';
import 'package:connect_chain/core/widgets/shimmer_loading_list.dart';
import 'package:connect_chain/features/main/logic/cubit/main_cubit.dart';
import 'package:connect_chain/features/manage_products/data/models/manage_supplier_products_request_model.dart';
import 'package:connect_chain/features/manage_products/data/repos/manage_products_repo.dart';
import 'package:connect_chain/features/manage_products/ui/widgets/custom_add_product_button.dart';
import 'package:connect_chain/features/manage_products/ui/widgets/manage_product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logic/cubit/manage_products_cubit.dart';
import 'widgets/custom_search_text_form_field.dart';

// parts of this Widget

part 'widgets/manage_products_list.dart';
part 'widgets/manage_products_bloc_consumer.dart';

class ManageProductsScreen extends StatelessWidget {
  const ManageProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ManageProductsCubit(getIt<ManageProductsRepo>())
        ..getSupplierProducts(),
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
                  children: [
                    verticalSpace(24),
                    const CustomSearchTextFormField(),
                    verticalSpace(33),
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
