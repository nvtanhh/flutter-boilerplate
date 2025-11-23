import '../../../../core/exceptions/all.dart';
import '../../base/base_data_mapper.dart';
import '../error_response/all.dart';

enum ErrorResponseMapperType {
  jsonObject,
}

abstract class BaseErrorResponseMapper<T> extends BaseDataMapper<T, ServerError> {
  const BaseErrorResponseMapper();

  factory BaseErrorResponseMapper.fromType(ErrorResponseMapperType type) {
    switch (type) {
      case ErrorResponseMapperType.jsonObject:
        return JsonObjectErrorResponseMapper() as BaseErrorResponseMapper<T>;
    }
  }
}
