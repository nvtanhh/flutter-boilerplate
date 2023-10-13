import 'package:injectable/injectable.dart';

import 'base_response_mapper.dart';

@injectable
class JsonArrayResponseMapper<T> implements SuccessResponseMapper<T, List<T>> {
  @override
  List<T> map(dynamic response, Decoder<T>? decoder) {
    return decoder != null && response is List
        ? response.map((dynamic jsonObject) => decoder(jsonObject)).toList(growable: false)
        : [response];
  }
}
