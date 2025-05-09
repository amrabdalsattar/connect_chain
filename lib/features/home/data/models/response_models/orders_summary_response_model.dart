class OrdersSummaryResponseModel {
  OrdersSummaryDataModel ordersSummaryDataModel;
  bool isSuccess;
  int errorCode;
  String message;

  OrdersSummaryResponseModel({
    required this.ordersSummaryDataModel,
    required this.isSuccess,
    required this.errorCode,
    required this.message,
  });

  factory OrdersSummaryResponseModel.fromJson(Map<String, dynamic> json) =>
      OrdersSummaryResponseModel(
        ordersSummaryDataModel: OrdersSummaryDataModel.fromJson(json['data']),
        isSuccess: json['isSuccess'],
        errorCode: json['errorCode'],
        message: json['message'],
      );

  Map<String, dynamic> toJson() => {
        'data': ordersSummaryDataModel.toJson(),
        'isSuccess': isSuccess,
        'errorCode': errorCode,
        'message': message,
      };
}

class OrdersSummaryDataModel {
  int completedOrders;
  int pendingOrders;
  int rejectedOrders;

  OrdersSummaryDataModel({
    required this.completedOrders,
    required this.pendingOrders,
    required this.rejectedOrders,
  });

  factory OrdersSummaryDataModel.fromJson(Map<String, dynamic> json) =>
      OrdersSummaryDataModel(
        completedOrders: json['completedOrders'],
        pendingOrders: json['pendingOrders'],
        rejectedOrders: json['rejectedOrders'],
      );

  Map<String, dynamic> toJson() => {
        'completedOrders': completedOrders,
        'pendingOrders': pendingOrders,
        'rejectedOrders': rejectedOrders,
      };
}
