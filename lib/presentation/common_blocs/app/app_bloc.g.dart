// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      locale: json['locale'] as String? ?? LocaleConstants.defaultLocale,
      isLoggedIn: json['isLoggedIn'] as bool? ?? false,
      isDarkTheme: json['isDarkTheme'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'isLoggedIn': instance.isLoggedIn,
      'isDarkTheme': instance.isDarkTheme,
    };
