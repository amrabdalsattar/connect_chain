import 'dart:io';

import '../../../../core/helpers/cache/shared_preferences_helper.dart';
import '../../../../core/helpers/cache/shared_preferences_keys.dart';
import '../../../../core/utils/image_picker_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_handler/api_error_model.dart';
import '../../data/models/add_product_model.dart';
import '../../data/repos/add_product_repo.dart';

part 'add_product_cubit.freezed.dart';
part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  final AddProductRepo _addProductRepo;
  AddProductCubit(this._addProductRepo)
      : super(const AddProductState.initial());

  // Variables
  String categoryController = '1'; // Replace with actual category ID
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController minimumStockController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  List<File> productImages = [];

// Images Functions
  Future<void> pickImage() async {
    await ImagePickerHelper.pickImage(
      maxImages: 5,
      currentImages: productImages,
      onImagePicked: (imageFile) {
        productImages.add(imageFile);
        emit(AddProductState.imageUploadSuccess(imageFile));
      },
      onError: (errorMessage) {
        emit(AddProductState.imageError(errorMessage));
      },
    );
  }

  void deleteImage(int imageIndex) {
    productImages.removeAt(imageIndex);
    emit(const AddProductState.imageDeleted());
  }

  // Product Functions

  void setCategory(String categoryId) {
    categoryController = categoryId;
  }

  Future<void> emitAddProductStates() async {
    emit(const AddProductState.initial());
    if (productImages.isEmpty) {
      emit(
          const AddProductState.imageError('Please select at least one image'));
      return;
    }
    if (categoryController.isEmpty) {
      emit(AddProductState.error(
          ApiErrorModel(message: 'Please select a category')));
      return;
    }

    if (!formKey.currentState!.validate()) return;

    emit(const AddProductState.loading());

    final result = await _addProductRepo.addProduct(
      addProductRequestModel: AddProductRequestModel(
        name: nameController.text,
        description: descriptionController.text,
        price: double.parse(priceController.text),
        minimumStock: int.parse(minimumStockController.text),
        images: productImages,
        stock: int.parse(quantityController.text),
        supplierId:
            SharedPreferencesHelper.getString(SharedPreferencesKeys.userId),
        categoryId: 1,
      ),
    );
    result.when(
      success: (data) => emit(const AddProductState.success()),
      failure: (error) => emit(AddProductState.error(error)),
    );
  }

  @override
  Future<void> close() {
    nameController.dispose();
    priceController.dispose();
    quantityController.dispose();
    descriptionController.dispose();
    minimumStockController.dispose();
    categoryController = '';
    productImages.clear();
    return super.close();
  }
}
