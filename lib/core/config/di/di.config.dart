// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i13;
import 'package:flutter_boilerplate/core/config/di/di.dart' as _i17;
import 'package:flutter_boilerplate/core/exception/api/dio_exception_mapper.dart'
    as _i7;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/authenticated_rest_api_client.dart'
    as _i15;
import 'package:flutter_boilerplate/data/datasources/gateway/api/mapper/response_mapper/json_array_response_mapper.dart'
    as _i8;
import 'package:flutter_boilerplate/data/datasources/gateway/api/mapper/response_mapper/json_object_reponse_mapper.dart'
    as _i9;
import 'package:flutter_boilerplate/data/datasources/gateway/api/mapper/response_mapper/paged_json_array_response_mapper.dart'
    as _i10;
import 'package:flutter_boilerplate/data/datasources/gateway/api/middleware/access_token_interceptor.dart'
    as _i3;
import 'package:flutter_boilerplate/data/datasources/gateway/api/middleware/connectivity_interceptor.dart'
    as _i5;
import 'package:flutter_boilerplate/data/datasources/gateway/api/middleware/log_interceptor.dart'
    as _i6;
import 'package:flutter_boilerplate/data/datasources/gateway/api/middleware/middleware.index.dart'
    as _i16;
import 'package:flutter_boilerplate/data/datasources/gateway/api/middleware/refresh_token_interceptor.dart'
    as _i11;
import 'package:flutter_boilerplate/data/datasources/gateway/api/middleware/retry_interceptor.dart'
    as _i12;
import 'package:flutter_boilerplate/data/datasources/gateway/api/middleware/trim_interceptor.dart'
    as _i14;
import 'package:flutter_boilerplate/data/datasources/gateway/preference/app_preferences.dart'
    as _i4;
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
    gh.lazySingleton<_i7.DioExceptionMapper>(() => _i7.DioExceptionMapper());
    gh.factory<_i8.JsonArrayResponseMapper<dynamic>>(
        () => _i8.JsonArrayResponseMapper<dynamic>());
    gh.factory<_i9.JsonObjectResponseMapper<dynamic>>(
        () => _i9.JsonObjectResponseMapper<dynamic>());
    gh.factory<_i10.RecordsJsonArrayResponseMapper<dynamic>>(
        () => _i10.RecordsJsonArrayResponseMapper<dynamic>());
    gh.factory<_i11.RefreshTokenInterceptor>(
        () => _i11.RefreshTokenInterceptor());
    gh.factory<_i12.RetryInterceptor>(() => _i12.RetryInterceptor(
          gh<_i13.Dio>(),
          maxRetries: gh<int>(),
          retryInterval: gh<Duration>(),
        ));
    gh.factory<_i14.TrimInterceptor>(() => _i14.TrimInterceptor());
    gh.lazySingleton<_i15.AuthenticatedRestApiClient>(
        () => _i15.AuthenticatedRestApiClient(
              accessTokenInterceptor: gh<_i16.AccessTokenInterceptor>(),
              refreshTokenInterceptor: gh<_i16.RefreshTokenInterceptor>(),
            ));
    return this;
  }
}

class _$RegisterModule extends _i17.RegisterModule {}
