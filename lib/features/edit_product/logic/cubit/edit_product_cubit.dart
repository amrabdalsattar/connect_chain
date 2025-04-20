import 'dart:io';

import '../../../../core/networking/api_error_handler/api_error_model.dart';
import '../../../../core/utils/image_picker_helper.dart';
import '../../data/model/edit_product_request_model.dart';
import '../../data/repos/edit_product_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_product_state.dart';
part 'edit_product_cubit.freezed.dart';

class EditProductCubit extends Cubit<EditProductState> {
  final EditProductRepo editProductRepo;
  EditProductCubit(this.editProductRepo)
      : super(const EditProductState.initial());

  // Variables
  int categoryId = 0; // Replace with actual category ID
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController minimumStockController = TextEditingController();
  TextEditingController skuController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final List<dynamic> productImages = [];
  final List<String> _imagesIds = [];
  final List<String> _deletedImagesIndexes = [];
  final List<File> _newImages = [];
  int _productId = 0;

  List<File> get newImages => _newImages;

  Future<void> saveProductUpdates() async {
    emit(const EditProductState.loading());
    final result = await editProductRepo.updateProduct(EditProductRequestModel(
        name: nameController.text,
        description: descriptionController.text,
        price: double.parse(priceController.text),
        stock: int.parse(minimumStockController.text),
        minimumStock: int.parse(minimumStockController.text),
        categoryId: 2,
        supplierId: '20044e2f-7c63-4ea5-a458-c39729d93e62',
        newImages: _newImages,
        productId: _productId));

    // Deleting The images
    if (_deletedImagesIndexes.isNotEmpty) {
      for (String imageIndex in _deletedImagesIndexes) {
        await editProductRepo.deleteProductImage(imageIndex);
      }
    }

    result.when(success: (product) {
      emit(const EditProductState.success());
    }, failure: (error) {
      emit(EditProductState.error(error));
    });
  }

  Future<void> fetchProductDataForEdit(int productId) async {
    emit(const EditProductState.loading());
    final result = await editProductRepo.getProductForUpdate(productId);
    result.when(success: (data) {
      final EditProductRequestModel product = data;
      nameController.text = product.name;
      priceController.text = product.price.toString();
      quantityController.text = product.stock.toString();
      descriptionController.text = product.description;
      minimumStockController.text = product.minimumStock.toString();
      productImages.addAll(List.from(product.imageUrls?.values ?? []));
      _imagesIds.addAll(List.from(product.imageUrls?.keys ?? []));
      categoryId = product.categoryId;
      _productId = productId;
      // No Response for SKU in the model
      // skuController.text = product.;
      emit(EditProductState.getProductSuccess(product));
    }, failure: (error) {
      emit(EditProductState.error(error));
    });
  }

  // Image Functions
  Future<void> addImage() async {
    await ImagePickerHelper.pickImage(
      maxImages: 5,
      currentImages: productImages,
      onImagePicked: (imageFile) {
        _newImages.add(imageFile);
        productImages.add(imageFile);
        emit((EditProductState.imageUploadSuccess(imageFile)));
      },
      onError: (message) {
        emit(EditProductState.error(ApiErrorModel(message: message)));
      },
    );
  }

  void removeImage(int imageIndex) {
    if (productImages.isNotEmpty) {
      emit(const EditProductState.imageLoading());
      _deletedImagesIndexes.add(_imagesIds[imageIndex]);
      productImages.removeAt(imageIndex);
      emit(const EditProductState.imageDeleted());
    }
    emit(const EditProductState.initial());
  }
}
