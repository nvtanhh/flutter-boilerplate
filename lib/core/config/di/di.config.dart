// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_boilerplate/core/config/di/di.dart' as _i42;
import 'package:flutter_boilerplate/core/config/di/raw_config.dart' as _i11;
import 'package:flutter_boilerplate/core/config/env_config.dart' as _i19;
import 'package:flutter_boilerplate/core/exceptions/mapper/api_exception/api_exception_mapper.dart'
    as _i18;
import 'package:flutter_boilerplate/core/exceptions/mapper/api_exception/dio_api_exception_mapper.dart'
    as _i7;
import 'package:flutter_boilerplate/core/exceptions/mapper/api_exception/graphql_api_exception_mapper.dart'
    as _i8;
import 'package:flutter_boilerplate/data/datasources/app_preferences.dart'
    as _i4;
import 'package:flutter_boilerplate/data/datasources/auth_datasource.dart'
    as _i28;
import 'package:flutter_boilerplate/data/datasources/datasources.dart' as _i32;
import 'package:flutter_boilerplate/data/datasources/providers/api/api.dart'
    as _i29;
import 'package:flutter_boilerplate/data/datasources/providers/api/clients/authenticated_rest_api_client.dart'
    as _i26;
import 'package:flutter_boilerplate/data/datasources/providers/api/clients/clients.dart'
    as _i22;
import 'package:flutter_boilerplate/data/datasources/providers/api/clients/socket/signalr_client.dart'
    as _i13;
import 'package:flutter_boilerplate/data/datasources/providers/api/clients/un_authenticated_rest_api_client.dart'
    as _i15;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/access_token_interceptor.dart'
    as _i3;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/connectivity_interceptor.dart'
    as _i5;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/interceptor.dart'
    as _i27;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/log_interceptor.dart'
    as _i6;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/refresh_token_interceptor.dart'
    as _i24;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/trim_interceptor.dart'
    as _i14;
import 'package:flutter_boilerplate/data/datasources/providers/api/response_mapper/json_array_response_mapper.dart'
    as _i9;
import 'package:flutter_boilerplate/data/datasources/providers/api/response_mapper/json_object_response_mapper.dart'
    as _i10;
import 'package:flutter_boilerplate/data/datasources/providers/api/response_mapper/paged_json_array_response_mapper.dart'
    as _i12;
import 'package:flutter_boilerplate/data/datasources/providers/gateway.dart'
    as _i25;
import 'package:flutter_boilerplate/data/datasources/refresh_token_datasource.dart'
    as _i21;
import 'package:flutter_boilerplate/data/repositories/auth_repo_impl.dart'
    as _i31;
import 'package:flutter_boilerplate/data/repositories/refresh_token_repo.dart'
    as _i23;
import 'package:flutter_boilerplate/data/repositories/user_repo_impl.dart'
    as _i17;
import 'package:flutter_boilerplate/domain/repositories/auth_repo.dart' as _i30;
import 'package:flutter_boilerplate/domain/repositories/user_repo.dart' as _i16;
import 'package:flutter_boilerplate/domain/usecases/auth/auth_usecases.dart'
    as _i41;
import 'package:flutter_boilerplate/domain/usecases/auth/forgot_password_usecase.dart'
    as _i33;
import 'package:flutter_boilerplate/domain/usecases/auth/logout_usecase.dart'
    as _i34;
import 'package:flutter_boilerplate/domain/usecases/auth/sign_in_usecase.dart'
    as _i35;
import 'package:flutter_boilerplate/domain/usecases/auth/sign_up_usecase.dart'
    as _i36;
import 'package:flutter_boilerplate/domain/usecases/user/get_current_user_usecase.dart'
    as _i20;
import 'package:flutter_boilerplate/presentation/base/bloc/common/common_bloc.dart'
    as _i37;
import 'package:flutter_boilerplate/presentation/features/auth/forgot_pass/bloc/forgot_pass_bloc.dart'
    as _i38;
import 'package:flutter_boilerplate/presentation/features/auth/sign_in/bloc/sign_in_bloc.dart'
    as _i39;
import 'package:flutter_boilerplate/presentation/features/auth/sign_up/bloc/sign_up_bloc.dart'
    as _i40;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.AccessTokenInterceptor>(() => _i3.AccessTokenInterceptor());
    await gh.singletonAsync<_i4.AppPreferences>(
      () => registerModule.appPreferences,
      preResolve: true,
    );
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
    gh.factory<_i7.DioApiExceptionMapper>(
        () => const _i7.DioApiExceptionMapper());
    gh.factory<_i8.GraphqlApiExceptionMapper>(
        () => const _i8.GraphqlApiExceptionMapper());
    gh.factory<_i9.JsonArrayResponseMapper<dynamic>>(
        () => _i9.JsonArrayResponseMapper<dynamic>());
    gh.factory<_i10.JsonObjectResponseMapper<dynamic>>(
        () => _i10.JsonObjectResponseMapper<dynamic>());
    await gh.singletonAsync<_i11.RawConfig>(
      () => registerModule.config(),
      preResolve: true,
    );
    gh.factory<_i12.RecordsJsonArrayResponseMapper<dynamic>>(
        () => _i12.RecordsJsonArrayResponseMapper<dynamic>());
    gh.lazySingleton<_i13.SignalRClient>(() => _i13.SignalRClient());
    gh.factory<_i14.TrimInterceptor>(() => _i14.TrimInterceptor());
    gh.lazySingleton<_i15.UnAuthenticatedRestApiClient>(
        () => _i15.UnAuthenticatedRestApiClient());
    gh.factory<_i16.UserRepository>(() => _i17.UserRepositoryImpl());
    gh.lazySingleton<_i18.ApiExceptionMapper>(() => _i18.ApiExceptionMapperImpl(
          gh<_i7.DioApiExceptionMapper>(),
          gh<_i8.GraphqlApiExceptionMapper>(),
        ));
    gh.singleton<_i19.EnvConfig>(_i19.EnvConfig(gh<_i11.RawConfig>()));
    gh.factory<_i20.GetCurrentUserUseCase>(
        () => _i20.GetCurrentUserUseCase(gh<_i16.UserRepository>()));
    gh.factory<_i21.RefreshTokenDatasource>(() =>
        _i21.RefreshTokDatasourceImp(gh<_i22.UnAuthenticatedRestApiClient>()));
    gh.lazySingleton<_i23.RefreshTokenRepository>(
        () => _i23.RefreshTokenRepository(
              gh<_i21.RefreshTokenDatasource>(),
              gh<_i4.AppPreferences>(),
            ));
    gh.factory<_i24.RefreshTokenInterceptor>(() => _i24.RefreshTokenInterceptor(
          gh<_i23.RefreshTokenRepository>(),
          gh<_i25.UnAuthenticatedRestApiClient>(),
        ));
    gh.lazySingleton<_i26.AuthenticatedRestApiClient>(
        () => _i26.AuthenticatedRestApiClient(
              accessTokenInterceptor: gh<_i27.AccessTokenInterceptor>(),
              refreshTokenInterceptor: gh<_i27.RefreshTokenInterceptor>(),
            ));
    gh.factory<_i28.AuthDataSource>(() => _i28.AuthDataSourceImpl(
          gh<_i29.UnAuthenticatedRestApiClient>(),
          gh<_i29.AuthenticatedRestApiClient>(),
        ));
    gh.factory<_i30.AuthRepository>(() => _i31.AuthRepositoryImpl(
          gh<_i32.AppPreferences>(),
          gh<_i32.AuthDataSource>(),
        ));
    gh.factory<_i33.ForgotPasswordUseCase>(
        () => _i33.ForgotPasswordUseCase(gh<_i30.AuthRepository>()));
    gh.factory<_i34.LogoutUseCase>(
        () => _i34.LogoutUseCase(gh<_i30.AuthRepository>()));
    gh.factory<_i35.SignInUseCase>(
        () => _i35.SignInUseCase(gh<_i30.AuthRepository>()));
    gh.factory<_i36.SignUpUseCase>(
        () => _i36.SignUpUseCase(gh<_i30.AuthRepository>()));
    gh.factory<_i37.CommonBloc>(
        () => _i37.CommonBloc(gh<_i34.LogoutUseCase>()));
    gh.factory<_i38.ForgotPassBloc>(
        () => _i38.ForgotPassBloc(gh<_i33.ForgotPasswordUseCase>()));
    gh.factory<_i39.SignInBloc>(
        () => _i39.SignInBloc(gh<_i35.SignInUseCase>()));
    gh.factory<_i40.SignUpBloc>(
        () => _i40.SignUpBloc(gh<_i41.SignUpUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i42.RegisterModule {}
