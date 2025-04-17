import 'package:bloc/bloc.dart';
import 'package:connect_chain/core/networking/api_error_handler/api_error_model.dart';
import 'package:connect_chain/features/product_details/data/models/product_details_response_model.dart';
import 'package:connect_chain/features/product_details/data/repos/product_details_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_state.dart';
part 'product_details_cubit.freezed.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final ProductDetailsRepo productDetailsRepo;
  ProductDetailsCubit(this.productDetailsRepo)
      : super(const ProductDetailsState.initial());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void changeSelectedImgUrl(int imageIndex) {
    emit(ProductDetailsState.imageChanged(imageIndex));
  }

  Future<void> emitProductDetailsState(int id) async {
    // emit(const ProductDetailsState.initial());
    emit(const ProductDetailsState.loading());
    final result = await productDetailsRepo.getProductDetails(id);

    result.when(success: (product) {
      emit(ProductDetailsState.success(product));
    }, failure: (error) {
      emit(ProductDetailsState.failed(error));
    });
  }
}
