import 'package:connect_chain/core/helpers/dialogs_helper.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/features/product_details/logic/cubit/product_details_cubit.dart';
import 'package:connect_chain/features/product_details/ui/product_deatils_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              loading: (_) => const Center(child: CircularProgressIndicator()),
              success: (successState) => ProductDeatilsScreen(
                productResponseModel: successState.product,
              ),
            ) ??
            const Center(
              child: Text('No Products Was found'),
            );
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
