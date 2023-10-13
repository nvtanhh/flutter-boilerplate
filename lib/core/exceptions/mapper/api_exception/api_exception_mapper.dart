import 'package:dio/dio.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../api_exception.dart';
import 'dio_api_exception_mapper.dart';
import 'graphql_api_exception_mapper.dart';

abstract class ApiExceptionMapper {
  ApiException map(Exception exception);
}

@LazySingleton(as: ApiExceptionMapper)
class ApiExceptionMapperImpl implements ApiExceptionMapper {
  const ApiExceptionMapperImpl(this._dioApiExceptionMapper, this._graphqlApiExceptionMapper);

  final DioApiExceptionMapper _dioApiExceptionMapper;
  final GraphqlApiExceptionMapper _graphqlApiExceptionMapper;

  @override
  ApiException map(Exception exception) {
    if (exception is DioException) {
      return _dioApiExceptionMapper.map(exception);
    }

    if (exception is OperationException) {
      return _graphqlApiExceptionMapper.map(exception);
    }

    return ApiException(ApiExceptionKind.unknown, exception);
  }
}
