// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_boilerplate/core/configs/di/di.dart' as _i676;
import 'package:flutter_boilerplate/core/configs/di/raw_config.dart' as _i607;
import 'package:flutter_boilerplate/core/configs/env_config.dart' as _i858;
import 'package:flutter_boilerplate/data/datasources/all.dart' as _i701;
import 'package:flutter_boilerplate/data/datasources/app_preferences.dart'
    as _i162;
import 'package:flutter_boilerplate/data/datasources/auth_datasource.dart'
    as _i25;
import 'package:flutter_boilerplate/data/datasources/providers/api/api.dart'
    as _i629;
import 'package:flutter_boilerplate/data/datasources/providers/api/clients/all.dart'
    as _i33;
import 'package:flutter_boilerplate/data/datasources/providers/api/clients/authenticated_rest_api_client.dart'
    as _i185;
import 'package:flutter_boilerplate/data/datasources/providers/api/clients/socket/signalr_client.dart'
    as _i368;
import 'package:flutter_boilerplate/data/datasources/providers/api/clients/un_authenticated_rest_api_client.dart'
    as _i1060;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/access_token_interceptor.dart'
    as _i926;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/all.dart'
    as _i484;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/connectivity_interceptor.dart'
    as _i119;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/log_interceptor.dart'
    as _i878;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/refresh_token_interceptor.dart'
    as _i242;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/trim_interceptor.dart'
    as _i515;
import 'package:flutter_boilerplate/data/datasources/providers/gateway.dart'
    as _i392;
import 'package:flutter_boilerplate/data/datasources/refresh_token_datasource.dart'
    as _i193;
import 'package:flutter_boilerplate/data/mappers/response_mapper/base/base_error_response_mapper.dart'
    as _i398;
import 'package:flutter_boilerplate/data/mappers/response_mapper/error_response/json_object_error_response_mapper.dart'
    as _i480;
import 'package:flutter_boilerplate/data/mappers/response_mapper/success_response/json_array_sucess_response_mapper.dart'
    as _i284;
import 'package:flutter_boilerplate/data/mappers/response_mapper/success_response/json_object_success_response_mapper.dart'
    as _i866;
import 'package:flutter_boilerplate/data/mappers/response_mapper/success_response/paged_json_array_success_response_mapper.dart'
    as _i347;
import 'package:flutter_boilerplate/data/repositories/auth_repo_impl.dart'
    as _i595;
import 'package:flutter_boilerplate/data/repositories/refresh_token_repo.dart'
    as _i804;
import 'package:flutter_boilerplate/data/repositories/user_repo_impl.dart'
    as _i805;
import 'package:flutter_boilerplate/domain/repositories/auth_repo.dart'
    as _i245;
import 'package:flutter_boilerplate/domain/repositories/user_repo.dart'
    as _i710;
import 'package:flutter_boilerplate/domain/usecases/auth/auth_usecases.dart'
    as _i749;
import 'package:flutter_boilerplate/domain/usecases/auth/forgot_password_usecase.dart'
    as _i652;
import 'package:flutter_boilerplate/domain/usecases/auth/logout_usecase.dart'
    as _i209;
import 'package:flutter_boilerplate/domain/usecases/auth/sign_in_usecase.dart'
    as _i193;
import 'package:flutter_boilerplate/domain/usecases/auth/sign_up_usecase.dart'
    as _i1027;
import 'package:flutter_boilerplate/domain/usecases/user/get_current_user_usecase.dart'
    as _i1005;
import 'package:flutter_boilerplate/presentation/base/bloc/common/common_bloc.dart'
    as _i382;
import 'package:flutter_boilerplate/presentation/base/exception_handler/exception_message_mappers/exception_message_mapper.dart'
    as _i1066;
import 'package:flutter_boilerplate/presentation/common_blocs/app/app_bloc.dart'
    as _i38;
import 'package:flutter_boilerplate/presentation/common_blocs/connectivity/connectivity_cubit.dart'
    as _i399;
import 'package:flutter_boilerplate/presentation/common_blocs/overlay/overlay_bloc.dart'
    as _i114;
import 'package:flutter_boilerplate/presentation/features/auth/forgot_pass/bloc/forgot_pass_bloc.dart'
    as _i439;
import 'package:flutter_boilerplate/presentation/features/auth/sign_in/bloc/sign_in_bloc.dart'
    as _i487;
import 'package:flutter_boilerplate/presentation/features/auth/sign_up/bloc/sign_up_bloc.dart'
    as _i573;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i515.TrimInterceptor>(() => _i515.TrimInterceptor());
    gh.factory<_i119.ConnectivityInterceptor>(
        () => _i119.ConnectivityInterceptor());
    gh.factory<_i926.AccessTokenInterceptor>(
        () => _i926.AccessTokenInterceptor());
    gh.factory<_i866.JsonObjectSuccessResponseMapper<dynamic>>(
        () => _i866.JsonObjectSuccessResponseMapper<dynamic>());
    gh.factory<_i347.RecordsJsonArraySuccessResponseMapper<dynamic>>(
        () => _i347.RecordsJsonArraySuccessResponseMapper<dynamic>());
    gh.factory<_i284.JsonArraySuccessResponseMapper<dynamic>>(
        () => _i284.JsonArraySuccessResponseMapper<dynamic>());
    await gh.singletonAsync<_i162.AppPreferences>(
      () => registerModule.appPreferences,
      preResolve: true,
    );
    await gh.singletonAsync<_i607.RawConfig>(
      () => registerModule.config(),
      preResolve: true,
    );
    gh.lazySingleton<_i1060.UnAuthenticatedRestApiClient>(
        () => _i1060.UnAuthenticatedRestApiClient());
    gh.lazySingleton<_i368.SignalRClient>(() => _i368.SignalRClient());
    gh.lazySingleton<_i38.AppBloc>(() => _i38.AppBloc());
    gh.lazySingleton<_i399.ConnectivityCubit>(() => _i399.ConnectivityCubit());
    gh.lazySingleton<_i114.AppOverlayBloc>(() => _i114.AppOverlayBloc());
    gh.lazySingleton<_i1066.ExceptionMessageMapper>(
        () => _i1066.ExceptionMessageMapper());
    gh.factory<_i398.BaseErrorResponseMapper<Map<String, dynamic>>>(
        () => _i480.JsonObjectErrorResponseMapper());
    gh.factory<_i710.UserRepository>(() => _i805.UserRepositoryImpl());
    gh.factory<_i193.RefreshTokenDatasource>(() =>
        _i193.RefreshTokDatasourceImp(gh<_i33.UnAuthenticatedRestApiClient>()));
    gh.lazySingleton<_i804.RefreshTokenRepository>(
        () => _i804.RefreshTokenRepository(
              gh<_i193.RefreshTokenDatasource>(),
              gh<_i162.AppPreferences>(),
            ));
    gh.singleton<_i858.EnvConfig>(() => _i858.EnvConfig(gh<_i607.RawConfig>()));
    gh.factory<_i1005.GetCurrentUserUseCase>(
        () => _i1005.GetCurrentUserUseCase(gh<_i710.UserRepository>()));
    gh.factory<_i878.CustomLogInterceptor>(() => _i878.CustomLogInterceptor(
          enableLogRequestInfo: gh<bool>(),
          enableLogSuccessResponse: gh<bool>(),
          enableLogErrorResponse: gh<bool>(),
          enableLogHeader: gh<bool>(),
          enableLogRequestBody: gh<bool>(),
          enableLogResponseData: gh<bool>(),
        ));
    gh.factory<_i242.RefreshTokenInterceptor>(
        () => _i242.RefreshTokenInterceptor(
              gh<_i804.RefreshTokenRepository>(),
              gh<_i392.UnAuthenticatedRestApiClient>(),
            ));
    gh.lazySingleton<_i185.AuthenticatedRestApiClient>(
        () => _i185.AuthenticatedRestApiClient(
              accessTokenInterceptor: gh<_i484.AccessTokenInterceptor>(),
              refreshTokenInterceptor: gh<_i484.RefreshTokenInterceptor>(),
            ));
    gh.factory<_i25.AuthDataSource>(() => _i25.AuthDataSourceImpl(
          gh<_i629.UnAuthenticatedRestApiClient>(),
          gh<_i629.AuthenticatedRestApiClient>(),
        ));
    gh.factory<_i245.AuthRepository>(() => _i595.AuthRepositoryImpl(
          gh<_i701.AppPreferences>(),
          gh<_i701.AuthDataSource>(),
        ));
    gh.factory<_i652.ForgotPasswordUseCase>(
        () => _i652.ForgotPasswordUseCase(gh<_i245.AuthRepository>()));
    gh.factory<_i193.SignInUseCase>(
        () => _i193.SignInUseCase(gh<_i245.AuthRepository>()));
    gh.factory<_i1027.SignUpUseCase>(
        () => _i1027.SignUpUseCase(gh<_i245.AuthRepository>()));
    gh.factory<_i573.SignUpBloc>(
        () => _i573.SignUpBloc(gh<_i749.SignUpUseCase>()));
    gh.factory<_i439.ForgotPassBloc>(
        () => _i439.ForgotPassBloc(gh<_i652.ForgotPasswordUseCase>()));
    gh.factory<_i209.LogoutUseCase>(
        () => _i209.LogoutUseCase(gh<_i245.AuthRepository>()));
    gh.factory<_i487.SignInBloc>(
        () => _i487.SignInBloc(gh<_i193.SignInUseCase>()));
    gh.factory<_i382.CommonBloc>(
        () => _i382.CommonBloc(gh<_i209.LogoutUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i676.RegisterModule {}
