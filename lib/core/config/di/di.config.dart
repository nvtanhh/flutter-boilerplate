// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_boilerplate/core/config/di/di.dart' as _i8;
import 'package:flutter_boilerplate/data/datasources/gateway/api/mapper/response_mapper/json_array_response_mapper.dart'
    as _i5;
import 'package:flutter_boilerplate/data/datasources/gateway/api/mapper/response_mapper/json_object_reponse_mapper.dart'
    as _i6;
import 'package:flutter_boilerplate/data/datasources/gateway/api/mapper/response_mapper/paged_json_array_response_mapper.dart'
    as _i7;
import 'package:flutter_boilerplate/data/datasources/gateway/api/middleware/connectivity_interceptor.dart'
    as _i4;
import 'package:flutter_boilerplate/data/datasources/gateway/preference/app_preferences.dart'
    as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singletonAsync<_i3.AppPreferences>(() => registerModule.appPreferences);
    gh.factory<_i4.ConnectivityInterceptor>(
        () => _i4.ConnectivityInterceptor());
    gh.factory<_i5.JsonArrayResponseMapper<dynamic>>(
        () => _i5.JsonArrayResponseMapper<dynamic>());
    gh.factory<_i6.JsonObjectResponseMapper<dynamic>>(
        () => _i6.JsonObjectResponseMapper<dynamic>());
    gh.factory<_i7.RecordsJsonArrayResponseMapper<dynamic>>(
        () => _i7.RecordsJsonArrayResponseMapper<dynamic>());
    return this;
  }
}

class _$RegisterModule extends _i8.RegisterModule {}
