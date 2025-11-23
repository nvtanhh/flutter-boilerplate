import '../success_response/all.dart';

typedef Decoder<T> = T Function(Map<String, dynamic> data);

enum SuccessResponseMapperType {
  jsonObject,
  jsonArray,
  pagedListJsonArray,
}

abstract class BaseSuccessResponseMapper<I, O> {
  factory BaseSuccessResponseMapper.fromType(SuccessResponseMapperType type) {
    switch (type) {
      case SuccessResponseMapperType.jsonObject:
        return JsonObjectSuccessResponseMapper<I>() as BaseSuccessResponseMapper<I, O>;
      case SuccessResponseMapperType.jsonArray:
        return JsonArraySuccessResponseMapper<I>() as BaseSuccessResponseMapper<I, O>;
      case SuccessResponseMapperType.pagedListJsonArray:
        return RecordsJsonArraySuccessResponseMapper<I>() as BaseSuccessResponseMapper<I, O>;
    }
  }

  O map(dynamic response, Decoder<I>? decoder);
}
