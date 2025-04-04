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
  String firstName;
  String lastName;
  String email;
  String address;
  String token;
  String phone;

  UserData({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.address,
    required this.token,
    required this.phone,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        address: json["address"],
        token: json["token"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "address": address,
        "token": token,
        "phone": phone,
      };
}
