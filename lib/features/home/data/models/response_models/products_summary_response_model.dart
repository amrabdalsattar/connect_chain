class ProductsSummaryResponseModel {
  ProductsSummaryDataModel productsSummaryData;
  bool isSuccess;
  int errorCode;
  String message;

  ProductsSummaryResponseModel({
    required this.productsSummaryData,
    required this.isSuccess,
    required this.errorCode,
    required this.message,
  });

  factory ProductsSummaryResponseModel.fromJson(Map<String, dynamic> json) =>
      ProductsSummaryResponseModel(
        productsSummaryData: ProductsSummaryDataModel.fromJson(json["data"]),
        isSuccess: json["isSuccess"],
        errorCode: json["errorCode"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": productsSummaryData.toJson(),
        "isSuccess": isSuccess,
        "errorCode": errorCode,
        "message": message,
      };
}

class ProductsSummaryDataModel {
  int totalProducts;
  int lowStockProducts;
  int outOfStockProducts;

  ProductsSummaryDataModel({
    required this.totalProducts,
    required this.lowStockProducts,
    required this.outOfStockProducts,
  });

  factory ProductsSummaryDataModel.fromJson(Map<String, dynamic> json) =>
      ProductsSummaryDataModel(
        totalProducts: json["totalProducts"],
        lowStockProducts: json["lowStockProducts"],
        outOfStockProducts: json["outOfStockProducts"],
      );

  Map<String, dynamic> toJson() => {
        "totalProducts": totalProducts,
        "lowStockProducts": lowStockProducts,
        "outOfStockProducts": outOfStockProducts,
      };
}
