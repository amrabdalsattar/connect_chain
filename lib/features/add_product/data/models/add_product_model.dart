import 'dart:io';
import '../../../../core/utils/convert_image_to_multipart_file.dart';
import 'package:dio/dio.dart';

class AddProductRequestModel {
  final String name;
  final String description;
  final double price;
  final int minimumStock;
  final int stock;
  final String supplierId;
  final int categoryId;
  final List<File> images;

  AddProductRequestModel({
    required this.name,
    required this.description,
    required this.price,
    required this.minimumStock,
    required this.stock,
    required this.supplierId,
    required this.categoryId,
    required this.images,
  });

  Future<FormData> toFormData() async {
    final List<MultipartFile> images = [];
    for (var image in this.images) {
      final multipartFile = await convertImageToMultipartFile(image, 'Images');
      images.add(multipartFile);
    }

    final formMap = {
      'Name': name,
      'Description': description,
      'Price': price,
      'MinimumStock': minimumStock,
      'Stock': stock,
      'SupplierId': supplierId,
      'CategoryId': categoryId,
      'Images': images,
    };
    return FormData.fromMap(
      formMap,
    );
  }
}
