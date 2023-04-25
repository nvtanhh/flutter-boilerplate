import 'json_array_response_mapper.dart';
import 'json_object_response_mapper.dart';
import 'paged_json_array_response_mapper.dart';

typedef Decoder<T> = T Function(Map<String, dynamic> data);

enum SuccessResponseMapperType {
  jsonObject,
  jsonArray,
  pagedListJsonArray,
}

abstract class SuccessResponseMapper<I, O> {
  factory SuccessResponseMapper(SuccessResponseMapperType type) {
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
