import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../../core/exceptions/api/api_exception.dart';
import '../base/base_error_response_mapper.dart';

class ServerGraphQLErrorMapper extends BaseErrorResponseMapper<OperationException> {
  const ServerGraphQLErrorMapper();

  @override
  ServerError mapToEntity(OperationException? data) {
    return ServerError(
      errorCode: data?.graphqlErrors.first.extensions?['code'] as String?,
      message: data?.graphqlErrors.firstOrNull?.message,
    );
  }
}
