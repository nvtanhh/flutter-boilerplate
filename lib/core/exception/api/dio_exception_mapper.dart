import 'package:dio/dio.dart';

import '../base/app_exception.dart';
import '../base/exception_mapper.dart';
import 'api_exception.dart';

class DioExceptionMapper implements ExceptionMapper {
  @override
  AppException map(Object? exception) {
    if (exception is DioError) {
      switch (exception.type) {
        case DioErrorType.connectionTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          return ApiException(ApiExceptionType.timeout, exception: exception);
        case DioErrorType.connectionError:
          return ApiException(ApiExceptionType.network, exception: exception);
        case DioErrorType.cancel:
          return ApiException(ApiExceptionType.cancellation, exception: exception);
        default:
          break;
      }
    }

    return ApiException(ApiExceptionType.unknown, exception: exception);
  }
}
