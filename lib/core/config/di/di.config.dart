// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_boilerplate/core/config/di/di.dart' as _i29;
import 'package:flutter_boilerplate/core/config/env_config.dart' as _i8;
import 'package:flutter_boilerplate/data/datasources/app_preferences.dart'
    as _i4;
import 'package:flutter_boilerplate/data/datasources/auth_datasource.dart'
    as _i21;
import 'package:flutter_boilerplate/data/datasources/datasources.dart' as _i25;
import 'package:flutter_boilerplate/data/datasources/gateway/api/api.dart'
    as _i22;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/authenticated_rest_api_client.dart'
    as _i19;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/clients.dart'
    as _i15;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/un_authenticated_rest_api_client.dart'
    as _i13;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/access_token_interceptor.dart'
    as _i3;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/connectivity_interceptor.dart'
    as _i6;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/interceptor.dart'
    as _i20;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/log_interceptor.dart'
    as _i7;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/refresh_token_interceptor.dart'
    as _i17;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/trim_interceptor.dart'
    as _i12;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/json_array_response_mapper.dart'
    as _i9;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/json_object_response_mapper.dart'
    as _i10;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/paged_json_array_response_mapper.dart'
    as _i11;
import 'package:flutter_boilerplate/data/datasources/gateway/gateway.dart'
    as _i18;
import 'package:flutter_boilerplate/data/datasources/refresh_token_datasource.dart'
    as _i14;
import 'package:flutter_boilerplate/data/repositories/auth_repo_impl.dart'
    as _i24;
import 'package:flutter_boilerplate/data/repositories/refresh_token_repo.dart'
    as _i16;
import 'package:flutter_boilerplate/domain/repositories/auth_repo.dart' as _i23;
import 'package:flutter_boilerplate/domain/usecases/auth/auth_usecases.dart'
    as _i28;
import 'package:flutter_boilerplate/domain/usecases/auth/is_logged_in_usecase.dart'
    as _i26;
import 'package:flutter_boilerplate/presentation/routing/guard/auth_guard.dart'
    as _i27;
import 'package:flutter_boilerplate/presentation/routing/router/router.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
    gh.factory<_i6.ConnectivityInterceptor>(
        () => _i6.ConnectivityInterceptor());
    gh.factory<_i7.CustomLogInterceptor>(() => _i7.CustomLogInterceptor(
          enableLogRequestInfo: gh<bool>(),
          enableLogSuccessResponse: gh<bool>(),
          enableLogErrorResponse: gh<bool>(),
          enableLogHeader: gh<bool>(),
          enableLogRequestBody: gh<bool>(),
          enableLogResponseData: gh<bool>(),
        ));
    gh.singleton<_i8.EnvConfig>(_i8.EnvConfig());
    gh.factory<_i9.JsonArrayResponseMapper<dynamic>>(
        () => _i9.JsonArrayResponseMapper<dynamic>());
    gh.factory<_i10.JsonObjectResponseMapper<dynamic>>(
        () => _i10.JsonObjectResponseMapper<dynamic>());
    gh.factory<_i11.RecordsJsonArrayResponseMapper<dynamic>>(
        () => _i11.RecordsJsonArrayResponseMapper<dynamic>());
    gh.factory<_i12.TrimInterceptor>(() => _i12.TrimInterceptor());
    gh.lazySingleton<_i13.UnAuthenticatedRestApiClient>(
        () => _i13.UnAuthenticatedRestApiClient());
    gh.factory<_i14.RefreshTokenDatasource>(() =>
        _i14.RefreshTokDatasourceImp(gh<_i15.UnAuthenticatedRestApiClient>()));
    gh.lazySingletonAsync<_i16.RefreshTokenRepository>(
        () async => _i16.RefreshTokenRepository(
              gh<_i14.RefreshTokenDatasource>(),
              await getAsync<_i4.AppPreferences>(),
            ));
    gh.factoryAsync<_i17.RefreshTokenInterceptor>(
        () async => _i17.RefreshTokenInterceptor(
              await getAsync<_i16.RefreshTokenRepository>(),
              gh<_i18.UnAuthenticatedRestApiClient>(),
            ));
    gh.lazySingletonAsync<_i19.AuthenticatedRestApiClient>(
        () async => _i19.AuthenticatedRestApiClient(
              accessTokenInterceptor: gh<_i20.AccessTokenInterceptor>(),
              refreshTokenInterceptor:
                  await getAsync<_i20.RefreshTokenInterceptor>(),
            ));
    gh.lazySingletonAsync<_i21.AuthDataSource>(
        () async => _i21.AuthDataSourceImpl(
              gh<_i22.UnAuthenticatedRestApiClient>(),
              await getAsync<_i22.AuthenticatedRestApiClient>(),
            ));
    gh.lazySingletonAsync<_i23.AuthRepository>(
        () async => _i24.AuthRepositoryImpl(
              await getAsync<_i25.AppPreferences>(),
              await getAsync<_i25.AuthDataSource>(),
            ));
    gh.factoryAsync<_i26.IsLoggedInUsecase>(() async =>
        _i26.IsLoggedInUsecase(await getAsync<_i23.AuthRepository>()));
    gh.factoryAsync<_i27.AuthGuard>(
        () async => _i27.AuthGuard(await getAsync<_i28.IsLoggedInUsecase>()));
    return this;
  }
}

class _$RegisterModule extends _i29.RegisterModule {}
