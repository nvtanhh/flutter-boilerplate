// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_boilerplate/core/configs/di/di.dart' as _i43;
import 'package:flutter_boilerplate/core/configs/di/raw_config.dart' as _i13;
import 'package:flutter_boilerplate/core/configs/env_config.dart' as _i20;
import 'package:flutter_boilerplate/data/datasources/app_preferences.dart' as _i5;
import 'package:flutter_boilerplate/data/datasources/auth_datasource.dart' as _i29;
import 'package:flutter_boilerplate/data/datasources/datasources.dart' as _i33;
import 'package:flutter_boilerplate/data/datasources/providers/api/api.dart' as _i30;
import 'package:flutter_boilerplate/data/datasources/providers/api/clients/authenticated_rest_api_client.dart' as _i27;
import 'package:flutter_boilerplate/data/datasources/providers/api/clients/clients.dart' as _i23;
import 'package:flutter_boilerplate/data/datasources/providers/api/clients/socket/signalr_client.dart' as _i15;
import 'package:flutter_boilerplate/data/datasources/providers/api/clients/un_authenticated_rest_api_client.dart'
    as _i17;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/access_token_interceptor.dart' as _i3;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/connectivity_interceptor.dart' as _i9;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/interceptor.dart' as _i28;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/log_interceptor.dart' as _i10;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/refresh_token_interceptor.dart' as _i25;
import 'package:flutter_boilerplate/data/datasources/providers/api/interceptor/trim_interceptor.dart' as _i16;
import 'package:flutter_boilerplate/data/datasources/providers/gateway.dart' as _i26;
import 'package:flutter_boilerplate/data/datasources/refresh_token_datasource.dart' as _i22;
import 'package:flutter_boilerplate/data/mappers/response_mapper/base/base_error_response_mapper.dart' as _i6;
import 'package:flutter_boilerplate/data/mappers/response_mapper/error_response/json_object_error_response_mapper.dart'
    as _i7;
import 'package:flutter_boilerplate/data/mappers/response_mapper/success_response/json_array_sucess_response_mapper.dart'
    as _i11;
import 'package:flutter_boilerplate/data/mappers/response_mapper/success_response/json_object_success_response_mapper.dart'
    as _i12;
import 'package:flutter_boilerplate/data/mappers/response_mapper/success_response/paged_json_array_success_response_mapper.dart'
    as _i14;
import 'package:flutter_boilerplate/data/repositories/auth_repo_impl.dart' as _i32;
import 'package:flutter_boilerplate/data/repositories/refresh_token_repo.dart' as _i24;
import 'package:flutter_boilerplate/data/repositories/user_repo_impl.dart' as _i19;
import 'package:flutter_boilerplate/domain/repositories/auth_repo.dart' as _i31;
import 'package:flutter_boilerplate/domain/repositories/user_repo.dart' as _i18;
import 'package:flutter_boilerplate/domain/usecases/auth/auth_usecases.dart' as _i42;
import 'package:flutter_boilerplate/domain/usecases/auth/forgot_password_usecase.dart' as _i34;
import 'package:flutter_boilerplate/domain/usecases/auth/logout_usecase.dart' as _i35;
import 'package:flutter_boilerplate/domain/usecases/auth/sign_in_usecase.dart' as _i36;
import 'package:flutter_boilerplate/domain/usecases/auth/sign_up_usecase.dart' as _i37;
import 'package:flutter_boilerplate/domain/usecases/user/get_current_user_usecase.dart' as _i21;
import 'package:flutter_boilerplate/presentation/base/bloc/common/common_bloc.dart' as _i38;
import 'package:flutter_boilerplate/presentation/common_blocs/connectivity/connectivity_cubit.dart' as _i8;
import 'package:flutter_boilerplate/presentation/common_blocs/overlay/overlay_bloc.dart' as _i4;
import 'package:flutter_boilerplate/presentation/features/auth/forgot_pass/bloc/forgot_pass_bloc.dart' as _i39;
import 'package:flutter_boilerplate/presentation/features/auth/sign_in/bloc/sign_in_bloc.dart' as _i40;
import 'package:flutter_boilerplate/presentation/features/auth/sign_up/bloc/sign_up_bloc.dart' as _i41;
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
    gh.lazySingleton<_i4.AppOverlayBloc>(() => _i4.AppOverlayBloc());
    await gh.singletonAsync<_i5.AppPreferences>(
      () => registerModule.appPreferences,
      preResolve: true,
    );
    gh.factory<_i6.BaseErrorResponseMapper<Map<String, dynamic>>>(() => _i7.JsonObjectErrorResponseMapper());
    gh.lazySingleton<_i8.ConnectivityCubit>(() => _i8.ConnectivityCubit());
    gh.factory<_i9.ConnectivityInterceptor>(() => _i9.ConnectivityInterceptor());
    gh.factory<_i10.CustomLogInterceptor>(() => _i10.CustomLogInterceptor(
          enableLogRequestInfo: gh<bool>(),
          enableLogSuccessResponse: gh<bool>(),
          enableLogErrorResponse: gh<bool>(),
          enableLogHeader: gh<bool>(),
          enableLogRequestBody: gh<bool>(),
          enableLogResponseData: gh<bool>(),
        ));
    gh.factory<_i11.JsonArraySuccessResponseMapper<dynamic>>(() => _i11.JsonArraySuccessResponseMapper<dynamic>());
    gh.factory<_i12.JsonObjectSuccessResponseMapper<dynamic>>(() => _i12.JsonObjectSuccessResponseMapper<dynamic>());
    await gh.singletonAsync<_i13.RawConfig>(
      () => registerModule.config(),
      preResolve: true,
    );
    gh.factory<_i14.RecordsJsonArraySuccessResponseMapper<dynamic>>(
        () => _i14.RecordsJsonArraySuccessResponseMapper<dynamic>());
    gh.lazySingleton<_i15.SignalRClient>(() => _i15.SignalRClient());
    gh.factory<_i16.TrimInterceptor>(() => _i16.TrimInterceptor());
    gh.lazySingleton<_i17.UnAuthenticatedRestApiClient>(() => _i17.UnAuthenticatedRestApiClient());
    gh.factory<_i18.UserRepository>(() => _i19.UserRepositoryImpl());
    gh.singleton<_i20.EnvConfig>(() => _i20.EnvConfig(gh<_i13.RawConfig>()));
    gh.factory<_i21.GetCurrentUserUseCase>(() => _i21.GetCurrentUserUseCase(gh<_i18.UserRepository>()));
    gh.factory<_i22.RefreshTokenDatasource>(
        () => _i22.RefreshTokDatasourceImp(gh<_i23.UnAuthenticatedRestApiClient>()));
    gh.lazySingleton<_i24.RefreshTokenRepository>(() => _i24.RefreshTokenRepository(
          gh<_i22.RefreshTokenDatasource>(),
          gh<_i5.AppPreferences>(),
        ));
    gh.factory<_i25.RefreshTokenInterceptor>(() => _i25.RefreshTokenInterceptor(
          gh<_i24.RefreshTokenRepository>(),
          gh<_i26.UnAuthenticatedRestApiClient>(),
        ));
    gh.lazySingleton<_i27.AuthenticatedRestApiClient>(() => _i27.AuthenticatedRestApiClient(
          accessTokenInterceptor: gh<_i28.AccessTokenInterceptor>(),
          refreshTokenInterceptor: gh<_i28.RefreshTokenInterceptor>(),
        ));
    gh.factory<_i29.AuthDataSource>(() => _i29.AuthDataSourceImpl(
          gh<_i30.UnAuthenticatedRestApiClient>(),
          gh<_i30.AuthenticatedRestApiClient>(),
        ));
    gh.factory<_i31.AuthRepository>(() => _i32.AuthRepositoryImpl(
          gh<_i33.AppPreferences>(),
          gh<_i33.AuthDataSource>(),
        ));
    gh.factory<_i34.ForgotPasswordUseCase>(() => _i34.ForgotPasswordUseCase(gh<_i31.AuthRepository>()));
    gh.factory<_i35.LogoutUseCase>(() => _i35.LogoutUseCase(gh<_i31.AuthRepository>()));
    gh.factory<_i36.SignInUseCase>(() => _i36.SignInUseCase(gh<_i31.AuthRepository>()));
    gh.factory<_i37.SignUpUseCase>(() => _i37.SignUpUseCase(gh<_i31.AuthRepository>()));
    gh.factory<_i38.CommonBloc>(() => _i38.CommonBloc(gh<_i35.LogoutUseCase>()));
    gh.factory<_i39.ForgotPassBloc>(() => _i39.ForgotPassBloc(gh<_i34.ForgotPasswordUseCase>()));
    gh.factory<_i40.SignInBloc>(() => _i40.SignInBloc(gh<_i36.SignInUseCase>()));
    gh.factory<_i41.SignUpBloc>(() => _i41.SignUpBloc(gh<_i42.SignUpUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i43.RegisterModule {}
