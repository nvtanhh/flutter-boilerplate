// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStateImpl _$$AppStateImplFromJson(Map<String, dynamic> json) => _$AppStateImpl(
      locale: json['locale'] as String? ?? LocaleConfig.defaultLocale,
      isLoggedIn: json['isLoggedIn'] as bool? ?? false,
      isDarkTheme: json['isDarkTheme'] as bool? ?? false,
    );

Map<String, dynamic> _$$AppStateImplToJson(_$AppStateImpl instance) => <String, dynamic>{
      'locale': instance.locale,
      'isLoggedIn': instance.isLoggedIn,
      'isDarkTheme': instance.isDarkTheme,
    };
