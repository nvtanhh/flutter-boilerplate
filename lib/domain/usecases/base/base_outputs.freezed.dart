// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_outputs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadMoreOutput<T> {
  List<T> get items => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  bool get isRefreshSuccess => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadMoreOutputCopyWith<T, LoadMoreOutput<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadMoreOutputCopyWith<T, $Res> {
  factory $LoadMoreOutputCopyWith(
          LoadMoreOutput<T> value, $Res Function(LoadMoreOutput<T>) then) =
      _$LoadMoreOutputCopyWithImpl<T, $Res, LoadMoreOutput<T>>;
  @useResult
  $Res call(
      {List<T> items,
      int total,
      int page,
      int pageSize,
      bool isRefreshSuccess,
      bool hasNext});
}

/// @nodoc
class _$LoadMoreOutputCopyWithImpl<T, $Res, $Val extends LoadMoreOutput<T>>
    implements $LoadMoreOutputCopyWith<T, $Res> {
  _$LoadMoreOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? pageSize = null,
    Object? isRefreshSuccess = null,
    Object? hasNext = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      isRefreshSuccess: null == isRefreshSuccess
          ? _value.isRefreshSuccess
          : isRefreshSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadMoreOutputImplCopyWith<T, $Res>
    implements $LoadMoreOutputCopyWith<T, $Res> {
  factory _$$LoadMoreOutputImplCopyWith(_$LoadMoreOutputImpl<T> value,
          $Res Function(_$LoadMoreOutputImpl<T>) then) =
      __$$LoadMoreOutputImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<T> items,
      int total,
      int page,
      int pageSize,
      bool isRefreshSuccess,
      bool hasNext});
}

/// @nodoc
class __$$LoadMoreOutputImplCopyWithImpl<T, $Res>
    extends _$LoadMoreOutputCopyWithImpl<T, $Res, _$LoadMoreOutputImpl<T>>
    implements _$$LoadMoreOutputImplCopyWith<T, $Res> {
  __$$LoadMoreOutputImplCopyWithImpl(_$LoadMoreOutputImpl<T> _value,
      $Res Function(_$LoadMoreOutputImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? pageSize = null,
    Object? isRefreshSuccess = null,
    Object? hasNext = null,
  }) {
    return _then(_$LoadMoreOutputImpl<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      isRefreshSuccess: null == isRefreshSuccess
          ? _value.isRefreshSuccess
          : isRefreshSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadMoreOutputImpl<T> extends _LoadMoreOutput<T> {
  const _$LoadMoreOutputImpl(
      {required final List<T> items,
      this.total = 0,
      this.page = PagingConstants.initialPage,
      this.pageSize = PagingConstants.defaultPageSize,
      this.isRefreshSuccess = false,
      this.hasNext = false})
      : _items = items,
        super._();

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int pageSize;
  @override
  @JsonKey()
  final bool isRefreshSuccess;
  @override
  @JsonKey()
  final bool hasNext;

  @override
  String toString() {
    return 'LoadMoreOutput<$T>(items: $items, total: $total, page: $page, pageSize: $pageSize, isRefreshSuccess: $isRefreshSuccess, hasNext: $hasNext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreOutputImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.isRefreshSuccess, isRefreshSuccess) ||
                other.isRefreshSuccess == isRefreshSuccess) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      total,
      page,
      pageSize,
      isRefreshSuccess,
      hasNext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreOutputImplCopyWith<T, _$LoadMoreOutputImpl<T>> get copyWith =>
      __$$LoadMoreOutputImplCopyWithImpl<T, _$LoadMoreOutputImpl<T>>(
          this, _$identity);
}

abstract class _LoadMoreOutput<T> extends LoadMoreOutput<T> {
  const factory _LoadMoreOutput(
      {required final List<T> items,
      final int total,
      final int page,
      final int pageSize,
      final bool isRefreshSuccess,
      final bool hasNext}) = _$LoadMoreOutputImpl<T>;
  const _LoadMoreOutput._() : super._();

  @override
  List<T> get items;
  @override
  int get total;
  @override
  int get page;
  @override
  int get pageSize;
  @override
  bool get isRefreshSuccess;
  @override
  bool get hasNext;
  @override
  @JsonKey(ignore: true)
  _$$LoadMoreOutputImplCopyWith<T, _$LoadMoreOutputImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
