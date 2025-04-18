class TopSoldProductsResponseModel {
  final List<TopSoldProductDataModel> topSoldProducts;
  final bool isSuccess;
  final int errorCode;
  final String message;

  TopSoldProductsResponseModel({
    required this.topSoldProducts,
    required this.isSuccess,
    required this.errorCode,
    required this.message,
  });

  factory TopSoldProductsResponseModel.fromJson(Map<String, dynamic> json) {
    return TopSoldProductsResponseModel(
      topSoldProducts: List<TopSoldProductDataModel>.from(
          json['data'].map((x) => TopSoldProductDataModel.fromJson(x))),
      isSuccess: json['isSuccess'],
      errorCode: json['errorCode'],
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': topSoldProducts.map((x) => x.toJson()).toList(),
      'isSuccess': isSuccess,
      'errorCode': errorCode,
      'message': message,
    };
  }
}

class TopSoldProductDataModel {
  final int productId;
  final String productName;
  final String imageUrl;
  final int totalSoldQuantity;

  TopSoldProductDataModel({
    required this.productId,
    required this.productName,
    required this.imageUrl,
    required this.totalSoldQuantity,
  });

  factory TopSoldProductDataModel.fromJson(Map<String, dynamic> json) {
    return TopSoldProductDataModel(
      productId: json['productId'],
      productName: json['productName'],
      imageUrl: json['imageUrl'],
      totalSoldQuantity: json['totalSoldQuantity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'productName': productName,
      'imageUrl': imageUrl,
      'totalSoldQuantity': totalSoldQuantity,
    };
  }
}
