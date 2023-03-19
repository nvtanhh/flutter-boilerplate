import 'package:injectable/injectable.dart';

import '../../../shared/shared.index.dart';
import 'base_response_mapper.dart';

@Injectable()
class JsonObjectResponseMapper<T> extends BaseSuccessResponseMapper<T, T> {
  @override
  T map(dynamic response, Decoder<T>? decoder) {
    return decoder != null && response is Map<String, dynamic> ? decoder(response) : response;
  }
}
