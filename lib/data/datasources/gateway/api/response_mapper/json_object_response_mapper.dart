import 'package:injectable/injectable.dart';

import '../../shared/shared.dart';
import 'base_response_mapper.dart';

@injectable
class JsonObjectResponseMapper<T> extends SuccessResponseMapper<T, T> {
  @override
  T map(dynamic response, Decoder<T>? decoder) {
    return decoder != null && response is Map<String, dynamic> ? decoder(response) : response;
  }
}
