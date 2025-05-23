import '../../../../core/helpers/dialogs_helper.dart';
import '../../../../core/theming/colors_helper.dart';
import '../../../../core/widgets/custom_empty_widget.dart';
import '../../../../core/widgets/custom_error_widget.dart';
import '../../../../core/widgets/custom_loading_indicator.dart';
import '../../logic/cubit/product_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../product_details_screen.dart';

class ProductDetailsBlocConsumer extends StatelessWidget {
  const ProductDetailsBlocConsumer({super.key, required this.productId});

  final int productId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductDetailsCubit, ProductDetailsState>(
      buildWhen: (previous, current) =>
          current is ProductDetailsLoadingState ||
          current is ProductDetailsSuccessState,
      builder: (context, state) {
        return state.mapOrNull(
              loading: (_) => const Scaffold(body: CustomLoadingIndicator()),
              success: (successState) => ProductDetailsScreen(
                productResponseModel: successState.product,
              ),
              failed: (error) => CustomErrorWidget(
                  errorMessage: error.error.getErrorMessages().toString()),
            ) ??
            const CustomEmptyWidget(message: 'لم يتم العثور على المنتج');
      },
      listener: (context, state) {
        state.whenOrNull(
          failed: (errorState) => DialogsHelper.showSnackBar(
            context,
            errorState.message ?? '',
            backgroundColor: ColorsHelper.rejectedOrderBackGroundColor,
          ),
        );
      },
    );
  }
}
