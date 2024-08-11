import 'package:dio/dio.dart';

import '../../../../../core/exceptions/all.dart';
import '../../../../mappers/response_mapper/base/base.dart';

class DioApiExceptionMapper implements ApiExceptionMapper {
  const DioApiExceptionMapper({required this.serverErrorMapper});

  final BaseErrorResponseMapper serverErrorMapper;

  @override
  ApiException map(Object? exception) {
    if (exception is! DioException) {
      return ApiException(
        kind: ApiExceptionKind.unknown,
        rootException: exception,
      );
    }

    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return ApiException(
          kind: ApiExceptionKind.timeout,
          rootException: exception,
        );
      case DioExceptionType.connectionError:
      case DioExceptionType.badCertificate:
        return ApiException(
          kind: ApiExceptionKind.network,
          rootException: exception,
        );
      case DioExceptionType.cancel:
        return ApiException(
          kind: ApiExceptionKind.cancellation,
          rootException: exception,
        );
      case DioExceptionType.badResponse:
        final statusCode = exception.response?.statusCode;
        if (exception.response?.data != null) {
          final serverError = exception.response!.data! is Map
              ? serverErrorMapper.mapToEntity(exception.response!.data!)
              : ServerError(message: exception.response!.data!);

          return ApiException(
            kind: ApiExceptionKind.serverDefined,
            statusCode: statusCode,
            serverError: serverError,
            rootException: exception,
          );
        }

        return ApiException(
          kind: ApiExceptionKind.serverUndefined,
          statusCode: statusCode,
          rootException: exception,
        );
      case DioExceptionType.unknown:
      default:
        return ApiException(
          kind: ApiExceptionKind.unknown,
          rootException: exception,
        );
    }
  }
}
