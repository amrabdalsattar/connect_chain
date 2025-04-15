class LoginResponseModel {
  UserData? userData;
  String? message;

  LoginResponseModel({
    this.userData,
    this.message,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        userData: UserData.fromJson(json["data"]),
        message: json["message"],
      );
}

class UserData {
  String name;
  String email;
  String address;
  String token;
  String phone;
  dynamic businessType;

  UserData({
    required this.name,
    required this.email,
    required this.address,
    required this.token,
    required this.phone,
    required this.businessType,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        name: json["name"],
        email: json["email"],
        address: json["address"],
        token: json["token"],
        phone: json["phone"],
        businessType: json["businessType"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "address": address,
        "token": token,
        "phone": phone,
        "businessType": businessType,
      };
}
