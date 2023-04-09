import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../api_exception.dart';
import 'api_exception_mapper.dart';

@injectable
class DioApiExceptionMapper implements ApiExceptionMapper {
  const DioApiExceptionMapper();

  @override
  ApiException map(Exception exception) {
    if (exception is! DioError) {
      return ApiException(ApiExceptionKind.unknown, exception);
    }

    switch (exception.type) {
      case DioErrorType.connectionTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        return ApiException(ApiExceptionKind.timeout, exception);
      case DioErrorType.connectionError:
        return ApiException(ApiExceptionKind.network, exception);
      case DioErrorType.cancel:
        return ApiException(ApiExceptionKind.cancellation, exception);
      default:
        break;
    }

    return ApiException(ApiExceptionKind.unknown, exception);
  }
}
