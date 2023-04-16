// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_boilerplate/core/config/di/di.dart' as _i36;
import 'package:flutter_boilerplate/core/config/env_config.dart' as _i10;
import 'package:flutter_boilerplate/core/exception/mapper/api_exception/api_exception_mapper.dart'
    as _i17;
import 'package:flutter_boilerplate/core/exception/mapper/api_exception/dio_api_exception_mapper.dart'
    as _i9;
import 'package:flutter_boilerplate/core/exception/mapper/api_exception/graphql_api_exception_mapper.dart'
    as _i11;
import 'package:flutter_boilerplate/data/datasources/app_preferences.dart'
    as _i5;
import 'package:flutter_boilerplate/data/datasources/auth_datasource.dart'
    as _i25;
import 'package:flutter_boilerplate/data/datasources/datasources.dart' as _i29;
import 'package:flutter_boilerplate/data/datasources/gateway/api/api.dart'
    as _i26;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/authenticated_rest_api_client.dart'
    as _i23;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/clients.dart'
    as _i19;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/un_authenticated_rest_api_client.dart'
    as _i16;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/access_token_interceptor.dart'
    as _i3;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/connectivity_interceptor.dart'
    as _i7;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/interceptor.dart'
    as _i24;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/log_interceptor.dart'
    as _i8;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/refresh_token_interceptor.dart'
    as _i21;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/trim_interceptor.dart'
    as _i15;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/json_array_response_mapper.dart'
    as _i12;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/json_object_response_mapper.dart'
    as _i13;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/paged_json_array_response_mapper.dart'
    as _i14;
import 'package:flutter_boilerplate/data/datasources/gateway/gateway.dart'
    as _i22;
import 'package:flutter_boilerplate/data/datasources/refresh_token_datasource.dart'
    as _i18;
import 'package:flutter_boilerplate/data/repositories/auth_repo_impl.dart'
    as _i28;
import 'package:flutter_boilerplate/data/repositories/refresh_token_repo.dart'
    as _i20;
import 'package:flutter_boilerplate/domain/repositories/auth_repo.dart' as _i27;
import 'package:flutter_boilerplate/domain/usecases/auth/auth_usecases.dart'
    as _i33;
import 'package:flutter_boilerplate/domain/usecases/auth/is_logged_in_usecase.dart'
    as _i30;
import 'package:flutter_boilerplate/domain/usecases/auth/logout_usecase.dart'
    as _i31;
import 'package:flutter_boilerplate/presentation/base/bloc/common/common_bloc.dart'
    as _i34;
import 'package:flutter_boilerplate/presentation/routing/app_navigator.dart'
    as _i4;
import 'package:flutter_boilerplate/presentation/routing/guard/auth_guard.dart'
    as _i32;
import 'package:flutter_boilerplate/presentation/routing/router/router.dart'
    as _i6;
import 'package:flutter_boilerplate/presentation/routing/routing.dart' as _i35;
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
    gh.lazySingleton<_i4.AppNavigator>(() => _i4.AppNavigator());
    gh.singletonAsync<_i5.AppPreferences>(() => registerModule.appPreferences);
    gh.singleton<_i6.AppRouter>(_i6.AppRouter());
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
    gh.factory<_i9.DioApiExceptionMapper>(() => _i9.DioApiExceptionMapper());
    gh.singleton<_i10.EnvConfig>(_i10.EnvConfig());
    gh.factory<_i11.GraphqlApiExceptionMapper>(
        () => _i11.GraphqlApiExceptionMapper());
    gh.factory<_i12.JsonArrayResponseMapper<dynamic>>(
        () => _i12.JsonArrayResponseMapper<dynamic>());
    gh.factory<_i13.JsonObjectResponseMapper<dynamic>>(
        () => _i13.JsonObjectResponseMapper<dynamic>());
    gh.factory<_i14.RecordsJsonArrayResponseMapper<dynamic>>(
        () => _i14.RecordsJsonArrayResponseMapper<dynamic>());
    gh.factory<_i15.TrimInterceptor>(() => _i15.TrimInterceptor());
    gh.lazySingleton<_i16.UnAuthenticatedRestApiClient>(
        () => _i16.UnAuthenticatedRestApiClient());
    gh.lazySingleton<_i17.ApiExceptionMapper>(() => _i17.ApiExceptionMapperImpl(
          gh<_i9.DioApiExceptionMapper>(),
          gh<_i11.GraphqlApiExceptionMapper>(),
        ));
    gh.factory<_i18.RefreshTokenDatasource>(() =>
        _i18.RefreshTokDatasourceImp(gh<_i19.UnAuthenticatedRestApiClient>()));
    gh.lazySingletonAsync<_i20.RefreshTokenRepository>(
        () async => _i20.RefreshTokenRepository(
              gh<_i18.RefreshTokenDatasource>(),
              await getAsync<_i5.AppPreferences>(),
            ));
    gh.factoryAsync<_i21.RefreshTokenInterceptor>(
        () async => _i21.RefreshTokenInterceptor(
              await getAsync<_i20.RefreshTokenRepository>(),
              gh<_i22.UnAuthenticatedRestApiClient>(),
            ));
    gh.lazySingletonAsync<_i23.AuthenticatedRestApiClient>(
        () async => _i23.AuthenticatedRestApiClient(
              accessTokenInterceptor: gh<_i24.AccessTokenInterceptor>(),
              refreshTokenInterceptor:
                  await getAsync<_i24.RefreshTokenInterceptor>(),
            ));
    gh.lazySingletonAsync<_i25.AuthDataSource>(
        () async => _i25.AuthDataSourceImpl(
              gh<_i26.UnAuthenticatedRestApiClient>(),
              await getAsync<_i26.AuthenticatedRestApiClient>(),
            ));
    gh.lazySingletonAsync<_i27.AuthRepository>(
        () async => _i28.AuthRepositoryImpl(
              await getAsync<_i29.AppPreferences>(),
              await getAsync<_i29.AuthDataSource>(),
            ));
    gh.factoryAsync<_i30.IsLoggedInUsecase>(() async =>
        _i30.IsLoggedInUsecase(await getAsync<_i27.AuthRepository>()));
    gh.factoryAsync<_i31.LogoutUseCase>(
        () async => _i31.LogoutUseCase(await getAsync<_i27.AuthRepository>()));
    gh.factoryAsync<_i32.AuthGuard>(
        () async => _i32.AuthGuard(await getAsync<_i33.IsLoggedInUsecase>()));
    gh.factoryAsync<_i34.CommonBloc>(() async => _i34.CommonBloc(
          gh<_i35.AppNavigator>(),
          await getAsync<_i31.LogoutUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i36.RegisterModule {}
