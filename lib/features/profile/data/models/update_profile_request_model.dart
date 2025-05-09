class UpdateProfileRequestModel {
  final String name;
  final String phoneNumber;
  final String address;
  final int activityCategoryID;
  final List<int> paymentMethodsIDs;

  UpdateProfileRequestModel({
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.activityCategoryID,
    required this.paymentMethodsIDs,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
      'address': address,
      'activityCategoryID': activityCategoryID,
      'paymentMethodsIDs': paymentMethodsIDs,
    };
  }
}
