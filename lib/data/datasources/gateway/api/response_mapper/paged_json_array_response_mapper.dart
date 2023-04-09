import 'package:injectable/injectable.dart';

import '../../../../models/base/paged_list_model.dart';
import '../../shared/shared.dart';
import 'base_response_mapper.dart';

@injectable
class RecordsJsonArrayResponseMapper<T> extends SuccessResponseMapper<T, PagedListModel<T>> {
  @override
  PagedListModel<T> map(dynamic response, Decoder<T>? decoder) {
    return decoder != null && response is Map<String, dynamic>
        ? PagedListModel<T>.fromJson(response, (dynamic json) => decoder(json))
        : PagedListModel<T>(items: response);
  }
}
