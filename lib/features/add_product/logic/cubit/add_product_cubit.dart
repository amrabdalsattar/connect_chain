import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:connect_chain/core/networking/api_error_handler/api_error_handler.dart';
import 'package:connect_chain/core/networking/api_error_handler/api_error_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'add_product_state.dart';
part 'add_product_cubit.freezed.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit() : super(const AddProductState.initial());
  List<File> images = [];

  Future<void> pickImage() async {
    emit(const AddProductState.initial());

    if (images.length >= 5) {
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
      images.add(imageFile);
      emit(AddProductState.imageUploadSuccess(imageFile));
    } catch (e) {
      emit(AddProductState.imageError(e.toString()));
    }
  }

  void deleteImage(File image) {
    images.remove(image);
    emit(AddProductState.imageUploadSuccess(image));
  }
}
