import 'package:json_annotation/json_annotation.dart';

part 'paged_list_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PagedListResponse<T> {
  PagedListResponse({
    required this.items,
    this.total,
    this.page,
    this.pageSize,
  });

  factory PagedListResponse.fromJson(Map<String, dynamic> json, T Function(dynamic) fromJsonT) =>
      _$PagedListResponseFromJson(json, fromJsonT);

  final List<T> items;
  final int? total;
  final int? page;
  final int? pageSize;
}
