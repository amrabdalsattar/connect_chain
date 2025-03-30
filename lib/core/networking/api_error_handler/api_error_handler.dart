import 'package:dio/dio.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: 'No internet connection');
        case DioExceptionType.cancel:
          return ApiErrorModel(message: 'Request cancelled');
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: 'Connection timed out');
        case DioExceptionType.unknown:
          return ApiErrorModel(message: 'Unknown error occurred');
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(message: 'Failed to receive data');
        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(message: 'Failed to send data');
        default:
          return ApiErrorModel(message: 'Something went wrong');
      }
    } else {
      return ApiErrorModel(message: 'Unexpected error occurred');
    }
  }
}

ApiErrorModel _handleError(dynamic data) {
  try {
    return ApiErrorModel(
      message: data['message'] ?? 'Unknown error occurred',
      code: data['code'],
    );
  } catch (e) {
    return ApiErrorModel(
      message: data['message'] ?? 'Unknown error occurred',
    );
  }
}
