import 'package:freezed_annotation/freezed_annotation.dart';

part 'paged_list.freezed.dart';

@freezed
class PagedList<T> with _$PagedList<T> {
  const PagedList._();

  const factory PagedList({
    required List<T> items,
    required int total,
    required int page,
    required int pageSize,
  }) = _PagedList<T>;

  bool get hasNext => page * pageSize < total;
}
