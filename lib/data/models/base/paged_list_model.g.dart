// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedListModel<T> _$PagedListModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PagedListModel<T>(
      items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
      total: json['total'] as int?,
      page: json['page'] as int?,
      pageSize: json['pageSize'] as int?,
    );

Map<String, dynamic> _$PagedListModelToJson<T>(
  PagedListModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'items': instance.items.map(toJsonT).toList(),
      'total': instance.total,
      'page': instance.page,
      'pageSize': instance.pageSize,
    };
