import 'package:json_annotation/json_annotation.dart';

part 'paged_list_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PagedListModel<T> {
  PagedListModel({
    required this.items,
    this.total,
    this.page,
    this.pageSize,
  });

  factory PagedListModel.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PagedListModelFromJson(json, fromJsonT);

  final List<T> items;
  final int? total;
  final int? page;
  final int? pageSize;
}
