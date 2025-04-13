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

  UserData({
    required this.name,
    required this.email,
    required this.address,
    required this.token,
    required this.phone,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        name: json["name"],
        email: json["email"],
        address: json["address"],
        token: json["token"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "firstName": name,
        "email": email,
        "address": address,
        "token": token,
        "phone": phone,
      };
}
