import 'package:injectable/injectable.dart';

import '../../../../models/base/paged_list_response.dart';
import '../../shared/shared.dart';
import 'base_response_mapper.dart';

@Injectable()
class RecordsJsonArrayResponseMapper<T> extends BaseSuccessResponseMapper<T, PagedListResponse<T>> {
  @override
  // ignore: avoid-dynamic
  PagedListResponse<T> map(dynamic response, Decoder<T>? decoder) {
    return decoder != null && response is Map<String, dynamic>
        ? PagedListResponse.fromJson(response, (dynamic json) => decoder(json))
        : PagedListResponse<T>(items: response);
  }
}
