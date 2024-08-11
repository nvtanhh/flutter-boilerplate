import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/all.dart';
import '../base/base_error_response_mapper.dart';

@Injectable(as: BaseErrorResponseMapper)
class JsonObjectErrorResponseMapper
    extends BaseErrorResponseMapper<Map<String, dynamic>> {
  @override
  ServerError mapToEntity(Map<String, dynamic>? data) {
    return ServerError(
      errorCode: data?['errorCode'] as String?,
      message: data?['message'] as String?,
    );
  }
}
