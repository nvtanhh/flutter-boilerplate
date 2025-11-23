import 'package:dio/dio.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../../../core/exceptions/all.dart';
import '../../../../mappers/response_mapper/base/all.dart';
import '../../../../mappers/response_mapper/error_response/all.dart';
import 'dio_api_exception_mapper.dart';

class GraphqlApiExceptionMapper implements ApiExceptionMapper {
  const GraphqlApiExceptionMapper({required this.serverErrorMapper});

  final BaseErrorResponseMapper serverErrorMapper;
  final ServerGraphQLErrorMapper _serverGraphQLErrorMapper = const ServerGraphQLErrorMapper();

  @override
  ApiException map(Object? exception) {
    if (exception is! OperationException) {
      return ApiException(
        kind: ApiExceptionKind.unknown,
        rootException: exception,
      );
    }

    if (exception.linkException?.originalException is DioException) {
      final dioException = exception.linkException!.originalException as DioException;
      if (dioException.type == DioExceptionType.badResponse) {
        /// server-defined error
        ServerError? serverError;
        if (dioException.response?.data != null) {
          serverError = dioException.response!.data! is Map
              ? serverErrorMapper.mapToEntity(dioException.response!.data!)
              : ServerError(message: dioException.response!.data!);
        }

        return ApiException(
          kind: ApiExceptionKind.serverUndefined,
          statusCode: dioException.response?.statusCode,
          serverError: serverError,
        );
      } else {
        return DioApiExceptionMapper(serverErrorMapper: serverErrorMapper)
            .map(exception.linkException?.originalException);
      }
    } else {
      final serverError = _serverGraphQLErrorMapper.mapToEntity(exception);

      return ApiException(
        kind: ApiExceptionKind.serverDefined,
        serverError: serverError,
      );
    }
  }
}
