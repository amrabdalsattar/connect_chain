class RevenueChartResponseModel {
  final Map<String, num> chartData;
  final bool isSuccess;
  final int errorCode;
  final String message;

  RevenueChartResponseModel({
    required this.chartData,
    required this.isSuccess,
    required this.errorCode,
    required this.message,
  });

  factory RevenueChartResponseModel.fromJson(Map<String, dynamic> json) {
    return RevenueChartResponseModel(
      chartData: Map<String, num>.from(json['data']),
      isSuccess: json['isSuccess'],
      errorCode: json['errorCode'],
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': chartData,
      'isSuccess': isSuccess,
      'errorCode': errorCode,
      'message': message,
    };
  }
}
