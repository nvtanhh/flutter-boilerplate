// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_boilerplate/core/config/di/di.dart' as _i22;
import 'package:flutter_boilerplate/core/config/env_config.dart' as _i9;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/authenticated_rest_api_client.dart'
    as _i20;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/clients.dart'
    as _i16;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/un_authenticated_rest_api_client.dart'
    as _i14;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/access_token_interceptor.dart'
    as _i3;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/connectivity_interceptor.dart'
    as _i7;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/interceptor.dart'
    as _i21;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/log_interceptor.dart'
    as _i8;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/refresh_token_interceptor.dart'
    as _i19;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/trim_interceptor.dart'
    as _i13;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/json_array_response_mapper.dart'
    as _i10;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/json_object_response_mapper.dart'
    as _i11;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/paged_json_array_response_mapper.dart'
    as _i12;
import 'package:flutter_boilerplate/data/datasources/gateway/gateway.dart'
    as _i18;
import 'package:flutter_boilerplate/data/datasources/gateway/preference/app_preferences.dart'
    as _i4;
import 'package:flutter_boilerplate/data/datasources/refresh_token_datasource.dart'
    as _i15;
import 'package:flutter_boilerplate/data/repositories/refresh_token_repo.dart'
    as _i17;
import 'package:flutter_boilerplate/presentation/routing/guard/auth_guard.dart'
    as _i6;
import 'package:flutter_boilerplate/presentation/routing/router/router.dart'
    as _i5;
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
    gh.singleton<_i5.AppRouter>(_i5.AppRouter());
    gh.factory<_i6.AuthGuard>(() => _i6.AuthGuard());
    gh.factory<_i7.ConnectivityInterceptor>(
        () => _i7.ConnectivityInterceptor());
    gh.factory<_i8.CustomLogInterceptor>(() => _i8.CustomLogInterceptor(
          enableLogRequestInfo: gh<bool>(),
          enableLogSuccessResponse: gh<bool>(),
          enableLogErrorResponse: gh<bool>(),
          enableLogHeader: gh<bool>(),
          enableLogRequestBody: gh<bool>(),
          enableLogResponseData: gh<bool>(),
        ));
    gh.singleton<_i9.EnvConfig>(_i9.EnvConfig());
    gh.factory<_i10.JsonArrayResponseMapper<dynamic>>(
        () => _i10.JsonArrayResponseMapper<dynamic>());
    gh.factory<_i11.JsonObjectResponseMapper<dynamic>>(
        () => _i11.JsonObjectResponseMapper<dynamic>());
    gh.factory<_i12.RecordsJsonArrayResponseMapper<dynamic>>(
        () => _i12.RecordsJsonArrayResponseMapper<dynamic>());
    gh.factory<_i13.TrimInterceptor>(() => _i13.TrimInterceptor());
    gh.lazySingleton<_i14.UnAuthenticatedRestApiClient>(
        () => _i14.UnAuthenticatedRestApiClient());
    gh.factory<_i15.RefreshTokenDatasource>(() =>
        _i15.RefreshTokDatasourceImp(gh<_i16.UnAuthenticatedRestApiClient>()));
    gh.lazySingletonAsync<_i17.RefreshTokenRepository>(
        () async => _i17.RefreshTokenRepository(
              gh<_i15.RefreshTokenDatasource>(),
              await getAsync<_i18.AppPreferences>(),
            ));
    gh.factoryAsync<_i19.RefreshTokenInterceptor>(
        () async => _i19.RefreshTokenInterceptor(
              await getAsync<_i17.RefreshTokenRepository>(),
              gh<_i18.UnAuthenticatedRestApiClient>(),
            ));
    gh.lazySingletonAsync<_i20.AuthenticatedRestApiClient>(
        () async => _i20.AuthenticatedRestApiClient(
              accessTokenInterceptor: gh<_i21.AccessTokenInterceptor>(),
              refreshTokenInterceptor:
                  await getAsync<_i21.RefreshTokenInterceptor>(),
            ));
    return this;
  }
}

class _$RegisterModule extends _i22.RegisterModule {}
