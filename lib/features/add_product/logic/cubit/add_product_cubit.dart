import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

import '../../../../core/helpers/constant_string.dart';
import '../../../../core/networking/api_error_handler/api_error_model.dart';
import '../../../../core/utils/image_picker_helper.dart';
import '../../data/models/add_product_model.dart';
import '../../data/repos/add_product_repo.dart';

part 'add_product_cubit.freezed.dart';
part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  final AddProductRepo _addProductRepo;
  AddProductCubit(this._addProductRepo)
      : super(const AddProductState.initial());

  // Variables
  String? categoryController; // Replace with actual category ID
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController minimumStockController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  List<File> productImages = [];

  Future<void> fillWithAi() async {
    if (nameController.text.trim().isEmpty && productImages.isEmpty) {
      return;
    }

    final model = GenerativeModel(
      model: 'gemini-2.0-flash',
      apiKey: 'AIzaSyCGFiuMBzuIW1q7T8ASrF9eNEsQZ5OMDLc',
    );

    // Build a prompt using the product name and/or image
    String promptText =
        'Generate realistic product details for the following: ';

    final List<Part> contentParts = [];

    if (nameController.text.trim().isNotEmpty) {
      promptText += 'Product name: "${nameController.text.trim()}". ';
    }
    if (productImages.isNotEmpty) {
      promptText += 'There is an image of the product provided. ';
    }

    contentParts.add(TextPart(promptText));

    if (productImages.isNotEmpty) {
      final File imageFile = productImages.first;
      // Emitting States
      emit(const AddProductState.loading());

      final Uint8List imageBytes = await imageFile.readAsBytes();

      // Determine the MIME type. Common image types: 'image/jpeg', 'image/png'.
      String mimeType;
      if (imageFile.path.toLowerCase().endsWith('.jpg') ||
          imageFile.path.toLowerCase().endsWith('.jpeg')) {
        mimeType = 'image/jpeg';
      } else if (imageFile.path.toLowerCase().endsWith('.png')) {
        mimeType = 'image/png';
      } else {
        mimeType = 'application/octet-stream'; // Fallback for unknown types
      }

      contentParts.add(DataPart(mimeType, imageBytes));
    }

    // Final instruction for the AI
    contentParts.add(TextPart(
        'Return a JSON object with the following fields: name, description, price, quantity, minimumStock and most suitable category from those $categories. as category '
        'Use Egyptian market as reference'
        'Use Arabic for all fields except price, quantity, and minimumStock. '
        'Do not add any explanation or extra text. Ensure the JSON is valid and complete.'));

    final response = await model.generateContent([
      Content.multi(
          contentParts) // Use Content.multi to send text and image parts
    ]);
    final suggestion = response.text?.trim() ?? '';

    try {
      final data = _extractJsonString(suggestion);

      final Map<String, dynamic> json = jsonDecode(data);

      // Update controllers, providing fallbacks if a field is missing from JSON
      nameController.text = json['name'] ?? nameController.text;
      descriptionController.text =
          json['description'] ?? descriptionController.text;
      priceController.text = json['price']?.toString() ?? priceController.text;
      quantityController.text =
          json['quantity']?.toString() ?? quantityController.text;
      minimumStockController.text =
          json['minimumStock']?.toString() ?? minimumStockController.text;
      categoryController = json['category'] ?? '';
      emit(const AddProductState.autoFillSucess());

      print('The Ai response is $json');
    } catch (e) {
      emit(AddProductState.error(ApiErrorModel(message: 'Auto Fill Failed')));
    }
  }

// Helper function to extract JSON from a string that might contain extra text
  String _extractJsonString(String text) {
    final startIndex = text.indexOf('{');
    if (startIndex == -1) return ''; // No JSON found

    final endIndex = text.lastIndexOf('}');
    if (endIndex == -1 || endIndex < startIndex) {
      return ''; // Invalid JSON structure
    }

    return text.substring(startIndex, endIndex + 1);
  }

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
    if (productImages.isNotEmpty) {
      log('Image deleted');
      productImages.removeAt(imageIndex);

      emit(const AddProductState.imageDeleted());
      emit(AddProductState.imagesList(productImages));
    }
  }

  // Product Functions

  void setCategory(String category) {
    categoryController = category;
  }

  Future<void> emitAddProductStates() async {
    emit(const AddProductState.initial());
    if (productImages.isEmpty) {
      emit(
          const AddProductState.imageError('Please select at least one image'));
      return;
    }
    if (categoryController == null || categoryController!.isEmpty) {
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
        categoryId: categories.indexOf(categoryController!),
      ),
    );
    result.when(
      success: (data) {
        if (!isClosed) emit(const AddProductState.success());
      },
      failure: (error) {
        if (!isClosed) emit(AddProductState.error(error));
      },
    );
  }

  @override
  Future<void> close() {
    nameController.dispose();
    priceController.dispose();
    quantityController.dispose();
    descriptionController.dispose();
    minimumStockController.dispose();
    categoryController = null;
    productImages.clear();
    return super.close();
  }
}
