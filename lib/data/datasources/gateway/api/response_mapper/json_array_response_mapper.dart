import 'package:injectable/injectable.dart';

import '../../shared/shared.dart';
import 'base_response_mapper.dart';

@Injectable()
class JsonArrayResponseMapper<T> extends BaseSuccessResponseMapper<T, List<T>> {
  @override
  // ignore: avoid-dynamic
  List<T> map(dynamic response, Decoder<T>? decoder) {
    return decoder != null && response is List
        ? response.map((dynamic jsonObject) => decoder(jsonObject)).toList(growable: false)
        : [response];
  }
}
