import 'package:dio/dio.dart';

import '../../../../../../core/constants/constants.index.dart';
import '../../../../../core/exception/api/dio_exception_mapper.dart';
import '../../shared/shared.index.dart';
import '../mapper/response_mapper/base_response_mapper.dart';
import 'rest_client_default_settings.dart';

enum RestMethod { get, post, put, patch, delete }

class RestApiClient {
  RestApiClient({
    required this.baseUrl,
    this.connectTimeoutInMs,
    this.interceptors = const [],
    this.successResponseMapperType = SuccessResponseMapperType.jsonObject,
  }) : _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: connectTimeoutInMs ?? const Duration(microseconds: ApiConstants.connectTimeoutInMs),
          ),
        ) {
    final List<Interceptor> interceptors = [
      ...ApiClientSettings.customInterceptors(_dio),
      ...this.interceptors,
    ];

    _dio.interceptors.addAll(interceptors);
  }

  final String baseUrl;
  final Duration? connectTimeoutInMs;
  final List<Interceptor> interceptors;
  final Dio _dio;
  final SuccessResponseMapperType successResponseMapperType;

  Future<T> request<T, D>({
    required RestMethod method,
    required String path,
    Map<String, dynamic>? queryParameters,
    dynamic body,
    Decoder<D>? decoder,
    Map<String, dynamic>? headers,
    SuccessResponseMapperType? successResponseMapperType,
  }) async {
    try {
      final response = await _requestByMethod<T>(
        method: method,
        path: path.startsWith(baseUrl) ? path.substring(baseUrl.length) : path,
        queryParameters: queryParameters,
        body: body,
        options: Options(
          headers: headers,
        ),
      );

      return BaseSuccessResponseMapper<D, T>.fromType(
        successResponseMapperType ?? this.successResponseMapperType,
      ).map(response.data, decoder);
    } catch (error) {
      throw DioExceptionMapper().map(error);
    }
  }

  Future<Response<T>> _requestByMethod<T>({
    required RestMethod method,
    required String path,
    Map<String, dynamic>? queryParameters,
    // ignore: avoid-dynamic
    dynamic body,
    Options? options,
  }) {
    switch (method) {
      case RestMethod.get:
        return _dio.get(
          path,
          queryParameters: queryParameters,
          options: options,
        );
      case RestMethod.post:
        return _dio.post(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
      case RestMethod.patch:
        return _dio.patch(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
      case RestMethod.put:
        return _dio.put(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
      case RestMethod.delete:
        return _dio.delete(
          path,
          data: body,
          queryParameters: queryParameters,
          options: options,
        );
    }
  }
}
