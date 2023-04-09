import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../api_exception.dart';
import 'api_exception_mapper.dart';

@injectable
class GraphqlApiExceptionMapper implements ApiExceptionMapper {
  const GraphqlApiExceptionMapper();

  @override
  ApiException map(Exception exception) {
    if (exception is! OperationException) {
      return ApiException(ApiExceptionKind.unknown, exception);
    }

    return ApiException(ApiExceptionKind.unknown, exception);
  }
}
