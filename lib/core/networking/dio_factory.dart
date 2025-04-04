import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../helpers/token_helper.dart';
import 'api_constants.dart';

class DioFactory {
  const DioFactory._();
  static Dio? _dio;

  static Dio get instance {
    if (_dio != null) return _dio!;

    _dio = Dio()
      ..options.baseUrl = ApiConstants.baseUrl
      ..options.connectTimeout = ApiConstants.timeOut
      ..options.receiveTimeout = ApiConstants.timeOut;
    addDioInterceptors();
    addDioHeaders();

    return _dio!;
  }

  static void addDioHeaders() async {
    _dio?.options.headers = {
      'Authorization': 'Bearer ${await TokenHelper.getSecuredUserToken()}',
    };
  }

  static void addDioInterceptors() {
    _dio?.interceptors.addAll([
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
    ]);
  }
}
