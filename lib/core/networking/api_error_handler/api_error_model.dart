import 'package:connect_chain/core/helpers/extensions.dart';

class ApiErrorModel {
  final int? errorCode;
  final String? message;
  final List<dynamic>? errors;

  ApiErrorModel({
    this.errorCode,
    this.message,
    this.errors,
  });

  String? getErrorMessages() {
    return errors.isNullOrEmpty()
        ? (message ?? "خطأ غير معروف")
        : errors!.join('\n');
  }
}
