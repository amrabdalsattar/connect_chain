class ProductDetailsResponseModel {
  final String sku;
  final String name;
  final String description;
  final double price;
  final int stock;
  final int minimumStock;
  final List<String> imageUrls;
  final String categoryName;
  final String? updatedDate;

  ProductDetailsResponseModel({
    required this.sku,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.minimumStock,
    required this.imageUrls,
    required this.categoryName,
    this.updatedDate,
  });

  factory ProductDetailsResponseModel.fromJson(Map<String, dynamic> json) {
    return ProductDetailsResponseModel(
      sku: json['sku'],
      name: json['name'],
      description: json['description'],
      price: (json['price'] as num).toDouble(),
      stock: json['stock'],
      minimumStock: json['minimumStock'],
      imageUrls: List<String>.from(json['imageUrls']),
      categoryName: json['categoryName'],
      updatedDate: json['updatedDate']?.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sku': sku,
      'name': name,
      'description': description,
      'price': price,
      'stock': stock,
      'minimumStock': minimumStock,
      'imageUrls': imageUrls,
      'categoryName': categoryName,
      'updatedDate': updatedDate,
    };
  }
}
