// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_boilerplate/core/config/di/di.dart' as _i41;
import 'package:flutter_boilerplate/core/config/env_config.dart' as _i8;
import 'package:flutter_boilerplate/core/exception/mapper/api_exception/api_exception_mapper.dart'
    as _i18;
import 'package:flutter_boilerplate/core/exception/mapper/api_exception/dio_api_exception_mapper.dart'
    as _i7;
import 'package:flutter_boilerplate/core/exception/mapper/api_exception/graphql_api_exception_mapper.dart'
    as _i9;
import 'package:flutter_boilerplate/data/datasources/app_preferences.dart'
    as _i4;
import 'package:flutter_boilerplate/data/datasources/auth_datasource.dart'
    as _i27;
import 'package:flutter_boilerplate/data/datasources/datasources.dart' as _i31;
import 'package:flutter_boilerplate/data/datasources/gateway/api/api.dart'
    as _i28;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/authenticated_rest_api_client.dart'
    as _i25;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/clients.dart'
    as _i21;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/socket/signalr_client.dart'
    as _i13;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/un_authenticated_rest_api_client.dart'
    as _i15;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/access_token_interceptor.dart'
    as _i3;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/connectivity_interceptor.dart'
    as _i5;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/interceptor.dart'
    as _i26;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/log_interceptor.dart'
    as _i6;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/refresh_token_interceptor.dart'
    as _i23;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/trim_interceptor.dart'
    as _i14;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/json_array_response_mapper.dart'
    as _i10;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/json_object_response_mapper.dart'
    as _i11;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/paged_json_array_response_mapper.dart'
    as _i12;
import 'package:flutter_boilerplate/data/datasources/gateway/gateway.dart'
    as _i24;
import 'package:flutter_boilerplate/data/datasources/refresh_token_datasource.dart'
    as _i20;
import 'package:flutter_boilerplate/data/repositories/auth_repo_impl.dart'
    as _i30;
import 'package:flutter_boilerplate/data/repositories/refresh_token_repo.dart'
    as _i22;
import 'package:flutter_boilerplate/data/repositories/user_repo_impl.dart'
    as _i17;
import 'package:flutter_boilerplate/domain/repositories/auth_repo.dart' as _i29;
import 'package:flutter_boilerplate/domain/repositories/user_repo.dart' as _i16;
import 'package:flutter_boilerplate/domain/usecases/auth/auth_usecases.dart'
    as _i40;
import 'package:flutter_boilerplate/domain/usecases/auth/forgot_password_usecase.dart'
    as _i32;
import 'package:flutter_boilerplate/domain/usecases/auth/logout_usecase.dart'
    as _i33;
import 'package:flutter_boilerplate/domain/usecases/auth/sign_in_usecase.dart'
    as _i34;
import 'package:flutter_boilerplate/domain/usecases/auth/sign_up_usecase.dart'
    as _i35;
import 'package:flutter_boilerplate/domain/usecases/user/get_current_user_usecase.dart'
    as _i19;
import 'package:flutter_boilerplate/presentation/base/bloc/common/common_bloc.dart'
    as _i36;
import 'package:flutter_boilerplate/presentation/features/auth/forgot_pass/bloc/forgot_pass_bloc.dart'
    as _i37;
import 'package:flutter_boilerplate/presentation/features/auth/sign_in/bloc/sign_in_bloc.dart'
    as _i38;
import 'package:flutter_boilerplate/presentation/features/auth/sign_up/bloc/sign_up_bloc.dart'
    as _i39;
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
    gh.factory<_i7.DioApiExceptionMapper>(() => _i7.DioApiExceptionMapper());
    gh.singleton<_i8.EnvConfig>(_i8.EnvConfig());
    gh.factory<_i9.GraphqlApiExceptionMapper>(
        () => _i9.GraphqlApiExceptionMapper());
    gh.factory<_i10.JsonArrayResponseMapper<dynamic>>(
        () => _i10.JsonArrayResponseMapper<dynamic>());
    gh.factory<_i11.JsonObjectResponseMapper<dynamic>>(
        () => _i11.JsonObjectResponseMapper<dynamic>());
    gh.factory<_i12.RecordsJsonArrayResponseMapper<dynamic>>(
        () => _i12.RecordsJsonArrayResponseMapper<dynamic>());
    gh.lazySingleton<_i13.SignalRClient>(() => _i13.SignalRClient());
    gh.factory<_i14.TrimInterceptor>(() => _i14.TrimInterceptor());
    gh.lazySingleton<_i15.UnAuthenticatedRestApiClient>(
        () => _i15.UnAuthenticatedRestApiClient());
    gh.factory<_i16.UserRepository>(() => _i17.UserRepositoryImpl());
    gh.lazySingleton<_i18.ApiExceptionMapper>(() => _i18.ApiExceptionMapperImpl(
          gh<_i7.DioApiExceptionMapper>(),
          gh<_i9.GraphqlApiExceptionMapper>(),
        ));
    gh.factory<_i19.GetCurrentUserUseCase>(
        () => _i19.GetCurrentUserUseCase(gh<_i16.UserRepository>()));
    gh.factory<_i20.RefreshTokenDatasource>(() =>
        _i20.RefreshTokDatasourceImp(gh<_i21.UnAuthenticatedRestApiClient>()));
    gh.lazySingletonAsync<_i22.RefreshTokenRepository>(
        () async => _i22.RefreshTokenRepository(
              gh<_i20.RefreshTokenDatasource>(),
              await getAsync<_i4.AppPreferences>(),
            ));
    gh.factoryAsync<_i23.RefreshTokenInterceptor>(
        () async => _i23.RefreshTokenInterceptor(
              await getAsync<_i22.RefreshTokenRepository>(),
              gh<_i24.UnAuthenticatedRestApiClient>(),
            ));
    gh.lazySingletonAsync<_i25.AuthenticatedRestApiClient>(
        () async => _i25.AuthenticatedRestApiClient(
              accessTokenInterceptor: gh<_i26.AccessTokenInterceptor>(),
              refreshTokenInterceptor:
                  await getAsync<_i26.RefreshTokenInterceptor>(),
            ));
    gh.lazySingletonAsync<_i27.AuthDataSource>(
        () async => _i27.AuthDataSourceImpl(
              gh<_i28.UnAuthenticatedRestApiClient>(),
              await getAsync<_i28.AuthenticatedRestApiClient>(),
            ));
    gh.lazySingletonAsync<_i29.AuthRepository>(
        () async => _i30.AuthRepositoryImpl(
              await getAsync<_i31.AppPreferences>(),
              await getAsync<_i31.AuthDataSource>(),
            ));
    gh.factoryAsync<_i32.ForgotPasswordUseCase>(() async =>
        _i32.ForgotPasswordUseCase(await getAsync<_i29.AuthRepository>()));
    gh.factoryAsync<_i33.LogoutUseCase>(
        () async => _i33.LogoutUseCase(await getAsync<_i29.AuthRepository>()));
    gh.factoryAsync<_i34.SignInUseCase>(
        () async => _i34.SignInUseCase(await getAsync<_i29.AuthRepository>()));
    gh.factoryAsync<_i35.SignUpUseCase>(
        () async => _i35.SignUpUseCase(await getAsync<_i29.AuthRepository>()));
    gh.factoryAsync<_i36.CommonBloc>(
        () async => _i36.CommonBloc(await getAsync<_i33.LogoutUseCase>()));
    gh.factoryAsync<_i37.ForgotPassBloc>(() async =>
        _i37.ForgotPassBloc(await getAsync<_i32.ForgotPasswordUseCase>()));
    gh.factoryAsync<_i38.SignInBloc>(
        () async => _i38.SignInBloc(await getAsync<_i34.SignInUseCase>()));
    gh.factoryAsync<_i39.SignUpBloc>(
        () async => _i39.SignUpBloc(await getAsync<_i40.SignUpUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i41.RegisterModule {}
