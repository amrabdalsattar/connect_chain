import '../../../../core/networking/api_error_handler/api_error_model.dart';
import '../../data/models/product_details_response_model.dart';
import '../../data/repos/product_details_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_state.dart';
part 'product_details_cubit.freezed.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final ProductDetailsRepo productDetailsRepo;
  ProductDetailsCubit(this.productDetailsRepo)
      : super(const ProductDetailsState.initial());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int productId = 0;

  void changeSelectedImgUrl(int imageIndex) {
    emit(ProductDetailsState.imageChanged(imageIndex));
  }

  Future<void> emitProductDetailsState(int id) async {
    emit(const ProductDetailsState.loading());
    final result = await productDetailsRepo.getProductDetails(id);
    productId = id;

    result.when(success: (product) {
      emit(ProductDetailsState.success(product));
    }, failure: (error) {
      emit(ProductDetailsState.failed(error));
    });
  }
}
