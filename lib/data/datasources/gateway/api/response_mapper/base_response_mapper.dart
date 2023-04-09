import '../../shared/shared.dart';
import 'json_array_response_mapper.dart';
import 'json_object_response_mapper.dart';
import 'paged_json_array_response_mapper.dart';

abstract class SuccessResponseMapper<I, O> {
  const SuccessResponseMapper();

  factory SuccessResponseMapper.fromType(SuccessResponseMapperType type) {
    switch (type) {
      case SuccessResponseMapperType.jsonObject:
        return JsonObjectResponseMapper<I>() as SuccessResponseMapper<I, O>;
      case SuccessResponseMapperType.jsonArray:
        return JsonArrayResponseMapper<I>() as SuccessResponseMapper<I, O>;
      case SuccessResponseMapperType.pagedListJsonArray:
        return RecordsJsonArrayResponseMapper<I>() as SuccessResponseMapper<I, O>;
    }
  }

  O map(dynamic response, Decoder<I>? decoder);
}
