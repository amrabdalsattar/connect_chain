class ApiErrorModel {
  int? errorCode;
  String? message;

  ApiErrorModel({
    this.errorCode,
    this.message = "خطأ غير معروف",
  });
}
