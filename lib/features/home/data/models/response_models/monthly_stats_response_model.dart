class MonthlyStatsResponseModel {
  MonthlyStatsDataModel monthlyStatsDataModel;
  bool isSuccess;
  int errorCode;
  String message;

  MonthlyStatsResponseModel({
    required this.monthlyStatsDataModel,
    required this.isSuccess,
    required this.errorCode,
    required this.message,
  });

  factory MonthlyStatsResponseModel.fromJson(Map<String, dynamic> json) =>
      MonthlyStatsResponseModel(
        monthlyStatsDataModel: MonthlyStatsDataModel.fromJson(json['data']),
        isSuccess: json['isSuccess'],
        errorCode: json['errorCode'],
        message: json['message'],
      );

  Map<String, dynamic> toJson() => {
        'data': monthlyStatsDataModel.toJson(),
        'isSuccess': isSuccess,
        'errorCode': errorCode,
        'message': message,
      };
}

class MonthlyStatsDataModel {
  int? topSoldProductId;
  String? topSoldProductName;
  num? averageOrderTotal;
  num? totalRevenues;

  MonthlyStatsDataModel({
    required this.topSoldProductId,
    required this.topSoldProductName,
    required this.averageOrderTotal,
    required this.totalRevenues,
  });

  factory MonthlyStatsDataModel.fromJson(Map<String, dynamic> json) =>
      MonthlyStatsDataModel(
        topSoldProductId: json['topSoldProductId'],
        topSoldProductName: json['topSoldProductName'],
        averageOrderTotal: json['averageOrderTotal'],
        totalRevenues: json['totalRevenues'],
      );

  Map<String, dynamic> toJson() => {
        'topSoldProductId': topSoldProductId,
        'topSoldProductName': topSoldProductName,
        'averageOrderTotal': averageOrderTotal,
        'totalRevenues': totalRevenues,
      };
}
