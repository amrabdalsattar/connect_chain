class RFQLineItemModel {
  final String productId;
  final String productName;
  final String? productDescription;
  final int quantity;
  final double unitPrice;
  final double totalPrice;
  final String? specifications;
  final String? brand;
  final String? model;

  RFQLineItemModel({
    required this.productId,
    required this.productName,
    this.productDescription,
    required this.quantity,
    required this.unitPrice,
    required this.totalPrice,
    this.specifications,
    this.brand,
    this.model,
  });

  RFQLineItemModel copyWith({
    String? productId,
    String? productName,
    String? productDescription,
    int? quantity,
    double? unitPrice,
    double? totalPrice,
    String? specifications,
    String? brand,
    String? model,
  }) {
    return RFQLineItemModel(
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      productDescription: productDescription ?? this.productDescription,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      totalPrice: totalPrice ?? this.totalPrice,
      specifications: specifications ?? this.specifications,
      brand: brand ?? this.brand,
      model: model ?? this.model,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productName': productName,
      'productDescription': productDescription,
      'quantity': quantity,
      'unitPrice': unitPrice,
      'totalPrice': totalPrice,
      'specifications': specifications,
      'brand': brand,
      'model': model,
    };
  }

  factory RFQLineItemModel.fromJson(Map<String, dynamic> json) {
    return RFQLineItemModel(
      productId: json['productId'],
      productName: json['productName'],
      productDescription: json['productDescription'],
      quantity: json['quantity'],
      unitPrice: json['unitPrice'].toDouble(),
      totalPrice: json['totalPrice'].toDouble(),
      specifications: json['specifications'],
      brand: json['brand'],
      model: json['model'],
    );
  }
}

enum RFQResponseStatus {
  draft,
  submitted,
  underReview,
  accepted,
  rejected,
  expired,
}
