// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedListResponse<T> _$PagedListResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PagedListResponse<T>(
      items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
      total: json['total'] as int?,
      page: json['page'] as int?,
      pageSize: json['pageSize'] as int?,
    );

Map<String, dynamic> _$PagedListResponseToJson<T>(
  PagedListResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'items': instance.items.map(toJsonT).toList(),
      'total': instance.total,
      'page': instance.page,
      'pageSize': instance.pageSize,
    };
