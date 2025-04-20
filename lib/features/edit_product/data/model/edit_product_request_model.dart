import 'dart:io';

import '../../../../core/utils/convert_image_to_multipart_file.dart';
import 'package:dio/dio.dart';

class EditProductRequestModel {
  final String name;
  final String description;
  final double price;
  final int stock;
  final Map<String, dynamic>? imageUrls;
  final int minimumStock;
  final int categoryId;
  final String? supplierId;
  int? productId;
  List<File>? newImages;

  EditProductRequestModel(
      {required this.name,
      required this.description,
      required this.price,
      required this.stock,
      this.imageUrls,
      required this.minimumStock,
      required this.categoryId,
      this.newImages,
      this.supplierId,
      this.productId});

  factory EditProductRequestModel.fromJson(Map<String, dynamic> json) {
    return EditProductRequestModel(
      name: json['name'],
      description: json['description'],
      price: (json['price'] as num).toDouble(),
      stock: json['stock'],
      imageUrls: json['imageUrls'],
      minimumStock: json['minimumStock'],
      categoryId: json['categoryId'],
      supplierId: json['supplierId'],
    );
  }

  Future<FormData> toFormData() async {
    final List<MultipartFile> images = [];

    if (newImages != null && newImages!.isNotEmpty) {
      for (var image in newImages!) {
        final multipartFile =
            await convertImageToMultipartFile(image, 'Images');
        images.add(multipartFile);
      }
    }
    final formMap = {
      'name': name,
      'description': description,
      'price': price,
      'stock': stock,
      'imageUrls': imageUrls,
      'minimumStock': minimumStock,
      'categoryId': categoryId,
      'supplierId': supplierId,
      'Images': images
    };

    return FormData.fromMap(formMap);
  }
}
