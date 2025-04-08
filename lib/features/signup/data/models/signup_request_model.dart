class SignupRequestModel {
  String firstName;
  String lastName;
  String phoneNumber;
  String email;
  String password;
  String address;
  String country;
  String confirmPassword;
  int role;

  SignupRequestModel({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
    required this.password,
    required this.address,
    required this.country,
    required this.confirmPassword,
    required this.role,
  });
  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "phoneNumber": phoneNumber,
        "email": email,
        "password": password,
        "address": address,
        "country": country,
        "confirmPassword": confirmPassword,
        "role": role,
      };
}
