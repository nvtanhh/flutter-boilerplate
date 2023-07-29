import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../api_exception.dart';
import 'api_exception_mapper.dart';

@injectable
class DioApiExceptionMapper implements ApiExceptionMapper {
  const DioApiExceptionMapper();

  @override
  ApiException map(Exception exception) {
    if (exception is! DioException) {
      return ApiException(ApiExceptionKind.unknown, exception);
    }

    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return ApiException(ApiExceptionKind.timeout, exception);
      case DioExceptionType.connectionError:
        return ApiException(ApiExceptionKind.network, exception);
      case DioExceptionType.cancel:
        return ApiException(ApiExceptionKind.cancellation, exception);
      default:
        return ApiException(ApiExceptionKind.unknown, exception);
    }
  }
}
