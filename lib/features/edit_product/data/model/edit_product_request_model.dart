class EditProductRequestModel {
  final String name;
  final String description;
  final double price;
  final int stock;
  final List<String> images;
  final List<String> remainingImages;
  final int minimumStock;
  final int categoryId;

  EditProductRequestModel({
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.images,
    required this.remainingImages,
    required this.minimumStock,
    required this.categoryId,
  });

  factory EditProductRequestModel.fromJson(Map<String, dynamic> json) {
    return EditProductRequestModel(
      name: json['name'],
      description: json['description'],
      price: (json['price'] as num).toDouble(),
      stock: json['stock'],
      images: List<String>.from(json['images']),
      remainingImages: List<String>.from(json['remainingImages']),
      minimumStock: json['minimumStock'],
      categoryId: json['categoryId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'stock': stock,
      'images': images,
      'remainingImages': remainingImages,
      'minimumStock': minimumStock,
      'categoryId': categoryId,
    };
  }
}
