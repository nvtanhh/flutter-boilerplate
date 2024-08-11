import 'package:injectable/injectable.dart';

import '../../../models/base/paged_list_model.dart';
import '../base/base_success_response_mapper.dart';

@injectable
class RecordsJsonArraySuccessResponseMapper<T>
    implements BaseSuccessResponseMapper<T, PagedListModel<T>> {
  @override
  PagedListModel<T> map(dynamic response, Decoder<T>? decoder) {
    return decoder != null && response is Map<String, dynamic>
        ? PagedListModel<T>.fromJson(response, (dynamic json) => decoder(json))
        : PagedListModel<T>(items: response);
  }
}
