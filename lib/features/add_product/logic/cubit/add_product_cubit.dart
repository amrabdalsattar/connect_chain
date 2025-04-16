import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;

import '../../../../core/networking/api_error_handler/api_error_model.dart';
import '../../data/models/add_product_model.dart';
import '../../data/repos/add_product_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'add_product_state.dart';
part 'add_product_cubit.freezed.dart';

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
    emit(const AddProductState.initial());
    // Check if the user has already selected 5 images
    if (productImages.length >= 5) {
      emit(const AddProductState.imageError('You can add 5 images only'));
      return;
    }

    final ImagePicker picker = ImagePicker();
    try {
      emit(const AddProductState.imageLoading());
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image == null) {
        emit(const AddProductState.imageError("No image selected"));
        return;
      }
      final File imageFile = File(image.path);
      productImages.add(imageFile);
      emit(AddProductState.imageUploadSuccess(imageFile));
    } catch (e) {
      emit(AddProductState.imageError(e.toString()));
    }
  }

  void deleteImage(File image) {
    productImages.remove(image);
    emit(AddProductState.imageUploadSuccess(image));
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
            '20044e2f-7c63-4ea5-a458-c39729d93e62', // Replace with actual supplier ID
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
