// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_boilerplate/core/config/di/di.dart' as _i20;
import 'package:flutter_boilerplate/core/config/env_config.dart' as _i7;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/authenticated_rest_api_client.dart'
    as _i18;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/clients.dart'
    as _i14;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/un_authenticated_rest_api_client.dart'
    as _i12;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/access_token_interceptor.dart'
    as _i3;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/connectivity_interceptor.dart'
    as _i5;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/interceptor.dart'
    as _i19;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/log_interceptor.dart'
    as _i6;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/refresh_token_interceptor.dart'
    as _i17;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/trim_interceptor.dart'
    as _i11;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/json_array_response_mapper.dart'
    as _i8;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/json_object_response_mapper.dart'
    as _i9;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/paged_json_array_response_mapper.dart'
    as _i10;
import 'package:flutter_boilerplate/data/datasources/gateway/gateway.dart'
    as _i16;
import 'package:flutter_boilerplate/data/datasources/gateway/preference/app_preferences.dart'
    as _i4;
import 'package:flutter_boilerplate/data/datasources/refresh_token_datasource.dart'
    as _i13;
import 'package:flutter_boilerplate/data/repositories/refresh_token_repo.dart'
    as _i15;
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
    gh.factory<_i3.AccessTokenInterceptor>(() => _i3.AccessTokenInterceptor());
    gh.singletonAsync<_i4.AppPreferences>(() => registerModule.appPreferences);
    gh.factory<_i5.ConnectivityInterceptor>(
        () => _i5.ConnectivityInterceptor());
    gh.factory<_i6.CustomLogInterceptor>(() => _i6.CustomLogInterceptor(
          enableLogRequestInfo: gh<bool>(),
          enableLogSuccessResponse: gh<bool>(),
          enableLogErrorResponse: gh<bool>(),
          enableLogHeader: gh<bool>(),
          enableLogRequestBody: gh<bool>(),
          enableLogResponseData: gh<bool>(),
        ));
    gh.singleton<_i7.EnvConfig>(_i7.EnvConfig());
    gh.factory<_i8.JsonArrayResponseMapper<dynamic>>(
        () => _i8.JsonArrayResponseMapper<dynamic>());
    gh.factory<_i9.JsonObjectResponseMapper<dynamic>>(
        () => _i9.JsonObjectResponseMapper<dynamic>());
    gh.factory<_i10.RecordsJsonArrayResponseMapper<dynamic>>(
        () => _i10.RecordsJsonArrayResponseMapper<dynamic>());
    gh.factory<_i11.TrimInterceptor>(() => _i11.TrimInterceptor());
    gh.lazySingleton<_i12.UnAuthenticatedRestApiClient>(
        () => _i12.UnAuthenticatedRestApiClient());
    gh.factory<_i13.RefreshTokenDatasource>(() =>
        _i13.RefreshTokDatasourceImp(gh<_i14.UnAuthenticatedRestApiClient>()));
    gh.lazySingletonAsync<_i15.RefreshTokenRepository>(
        () async => _i15.RefreshTokenRepository(
              gh<_i13.RefreshTokenDatasource>(),
              await getAsync<_i16.AppPreferences>(),
            ));
    gh.factoryAsync<_i17.RefreshTokenInterceptor>(
        () async => _i17.RefreshTokenInterceptor(
              await getAsync<_i15.RefreshTokenRepository>(),
              gh<_i16.UnAuthenticatedRestApiClient>(),
            ));
    gh.lazySingletonAsync<_i18.AuthenticatedRestApiClient>(
        () async => _i18.AuthenticatedRestApiClient(
              accessTokenInterceptor: gh<_i19.AccessTokenInterceptor>(),
              refreshTokenInterceptor:
                  await getAsync<_i19.RefreshTokenInterceptor>(),
            ));
    return this;
  }
}

class _$RegisterModule extends _i20.RegisterModule {}
