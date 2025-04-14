import 'dart:io';

class ProductModel {
  final String name;
  final String category;
  final double price;
  final int quantity;
  final String sku;
  final int inventoryLimit;
  final String description;
  final List<File> images;

  ProductModel({
    required this.name,
    required this.category,
    required this.price,
    required this.quantity,
    required this.sku,
    required this.inventoryLimit,
    required this.description,
    required this.images,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'category': category,
      'price': price,
      'quantity': quantity,
      'sku': sku,
      'inventory_limit': inventoryLimit,
      'description': description,
      'images': images,
    };
  }
}
