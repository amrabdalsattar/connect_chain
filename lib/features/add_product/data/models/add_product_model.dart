import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../core/utils/convert_image_to_multipart_file.dart';

class AddProductRequestModel {
  final String name;
  final String description;
  final double price;
  final int minimumStock;
  final int stock;

  final int categoryId;
  final List<File> images;

  AddProductRequestModel({
    required this.name,
    required this.description,
    required this.price,
    required this.minimumStock,
    required this.stock,
    required this.categoryId,
    required this.images,
  });

  Future<FormData> toFormData() async {
    try {
      final multipartImages = await Future.wait(
        images.map((image) => convertImageToMultipartFile(image, 'Images')),
      ).onError((error, stackTrace) {
        throw Exception('Failed to convert images: $error');
      });

      return FormData.fromMap({
        'Name': name,
        'Description': description,
        'Price': price,
        'MinimumStock': minimumStock,
        'Stock': stock,
        'CategoryId': categoryId,
        'Images': multipartImages.whereType<MultipartFile>().toList(),
      });
    } catch (e) {
      throw Exception('FormData creation failed: $e');
    }
  }
}
