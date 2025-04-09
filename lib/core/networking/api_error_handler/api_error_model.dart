import 'package:connect_chain/core/helpers/constant_string.dart';
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
        ? (message ?? ConstantString.unknownError)
        : errors!.join('\n');
  }
}
