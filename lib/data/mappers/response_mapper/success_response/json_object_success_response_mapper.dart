import 'package:injectable/injectable.dart';

import '../base/base_success_response_mapper.dart';

@injectable
class JsonObjectSuccessResponseMapper<T> implements BaseSuccessResponseMapper<T, T> {
  @override
  T map(dynamic response, Decoder<T>? decoder) {
    return decoder != null && response is Map<String, dynamic> ? decoder(response) : response;
  }
}
