class ManageSupplierProductsResponseModel {
  final List<ProductDataModel> data;
  

  ManageSupplierProductsResponseModel({
    required this.data,
  
  });

  factory ManageSupplierProductsResponseModel.fromJson(Map<String, dynamic> json) {
    return ManageSupplierProductsResponseModel(
      data: (json['data'] as List<dynamic>)
          .map((item) => ProductDataModel.fromJson(item))
          .toList(),
   
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.map((product) => product.toJson()).toList(),

    };
  }
}

class ProductDataModel {
  final int id;
  final String name;
  final int stock;
  final double price;
  final String categoryName;
  final String? image;

  ProductDataModel({
    required this.id,
    required this.name,
    required this.stock,
    required this.price,
    required this.categoryName,
    this.image,
  });

  factory ProductDataModel.fromJson(Map<String, dynamic> json) {
    return ProductDataModel(
      id: json['id'] ,
      name: json['name'] ,
      stock: json['stock'],
      price: json['price'] ,
      categoryName: json['categoryName'] ,
      image: json['image'] ,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'stock': stock,
      'price': price,
      'categoryName': categoryName,
      'image': image,
    };
  }
}
