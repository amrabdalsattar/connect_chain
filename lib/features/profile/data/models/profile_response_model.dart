class SupplierProfileResponse {
  final SupplierData? supplierData;
  final bool isSuccess;
  final int errorCode;
  final String message;

  SupplierProfileResponse({
    this.supplierData,
    required this.isSuccess,
    required this.errorCode,
    required this.message,
  });

  factory SupplierProfileResponse.fromJson(Map<String, dynamic> json) {
    return SupplierProfileResponse(
      supplierData:
          json['data'] != null ? SupplierData.fromJson(json['data']) : null,
      isSuccess: json['isSuccess'],
      errorCode: json['errorCode'],
      message: json['message'],
    );
  }
}

class SupplierData {
  final String? name;
  final String phoneNumber;
  final String address;
  final String email;
  final String? activityCategory;
  final List<dynamic> paymentMethods;

  SupplierData({
    this.name,
    required this.phoneNumber,
    required this.address,
    required this.email,
    this.activityCategory,
    required this.paymentMethods,
  });

  factory SupplierData.fromJson(Map<String, dynamic> json) {
    return SupplierData(
      name: json['name'],
      phoneNumber: json['phoneNumber'],
      address: json['address'],
      email: json['email'],
      activityCategory: json['activityCategory'],
      paymentMethods: List<dynamic>.from(json['paymentMethods']),
    );
  }
}
