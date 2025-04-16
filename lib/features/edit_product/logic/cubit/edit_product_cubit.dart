import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:connect_chain/core/networking/api_error_handler/api_error_model.dart';
import 'package:connect_chain/features/edit_product/data/model/edit_product_request_model.dart';
import 'package:connect_chain/features/edit_product/data/repos/edit_product_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_product_state.dart';
part 'edit_product_cubit.freezed.dart';

class EditProductCubit extends Cubit<EditProductState> {
  final EditProductRepo editProductRepo;
  EditProductCubit(this.editProductRepo)
      : super(const EditProductState.initial());

  // Variables
  String categoryController = '1'; // Replace with actual category ID
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController minimumStockController = TextEditingController();
  TextEditingController skuController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  List<File> productImages = [];

  emitEditStates() async {
    emit(const EditProductState.initial());
    final result = await editProductRepo.updateProduct(EditProductRequestModel(
        name: nameController.text,
        description: descriptionController.text,
        price: double.parse(priceController.text),
        stock: int.parse(minimumStockController.text),
        images: [],
        remainingImages: [],
        minimumStock: int.parse(minimumStockController.text),
        categoryId: 2));

    result.when(success: (product) {
      emit(const EditProductState.success());
    }, failure: (error) {
      emit(EditProductState.error(error));
    });
  }
}
