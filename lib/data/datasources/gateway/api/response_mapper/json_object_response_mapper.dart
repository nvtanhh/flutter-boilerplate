import 'package:injectable/injectable.dart';

import 'base_response_mapper.dart';

@injectable
class JsonObjectResponseMapper<T> implements SuccessResponseMapper<T, T> {
  @override
  T map(dynamic response, Decoder<T>? decoder) {
    return decoder != null && response is Map<String, dynamic> ? decoder(response) : response;
  }
}
