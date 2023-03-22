import 'package:dio/dio.dart';

import '../../../../../../core/constants/constants.index.dart';
import '../../../../../../core/exception/api_exception.dart';
import '../../../shared/shared.dart';
import '../../response_mapper/base_response_mapper.dart';
import 'api_client_default_settings.dart';

enum RestMethod { get, post, put, patch, delete }

class RestApiClient {
  RestApiClient({
    required this.baseUrl,
    this.interceptors = const [],
    this.connectTimeoutInMs = const Duration(microseconds: ApiConstants.connectTimeoutInMs),
    this.successResponseMapperType = ApiConstants.defaultSuccessResponseMapperType,
  }) : _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: connectTimeoutInMs,
          ),
        ) {
    final List<Interceptor> interceptors = [
      ...ApiClientSettings.requiredInterceptors(_dio),
      ...this.interceptors,
    ];

    _dio.interceptors.addAll(interceptors);
  }

  final String baseUrl;
  final Duration? connectTimeoutInMs;
  final List<Interceptor> interceptors;
  final Dio _dio;
  final SuccessResponseMapperType successResponseMapperType;

  Future<Response<T>> fetch<T>(RequestOptions requestOptions) {
    return _dio.fetch(requestOptions);
  }

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
        options: Options(headers: headers),
      );

      return BaseSuccessResponseMapper<D, T>.fromType(
        successResponseMapperType ?? this.successResponseMapperType,
      ).map(response.data, decoder);
    } on DioError catch (error) {
      throw ApiException.fromDioError(error);
    } catch (error) {
      rethrow;
    }
  }

  Future<T> get<T, D>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Decoder<D>? decoder,
  }) async {
    return request<T, D>(
      method: RestMethod.get,
      path: path,
      queryParameters: queryParameters,
      headers: headers,
      decoder: decoder,
    );
  }

  Future<T> post<T, D>(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic body,
    Map<String, dynamic>? headers,
    Decoder<D>? decoder,
  }) async {
    return request<T, D>(
      method: RestMethod.post,
      path: path,
      queryParameters: queryParameters,
      body: body,
      headers: headers,
      decoder: decoder,
    );
  }

  Future<T> put<T, D>(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic body,
    Map<String, dynamic>? headers,
    Decoder<D>? decoder,
  }) async {
    return request<T, D>(
      method: RestMethod.put,
      path: path,
      queryParameters: queryParameters,
      body: body,
      headers: headers,
      decoder: decoder,
    );
  }

  Future<T> patch<T, D>({
    required String path,
    Map<String, dynamic>? queryParameters,
    dynamic body,
    Map<String, dynamic>? headers,
    Decoder<D>? decoder,
  }) async {
    return request<T, D>(
      method: RestMethod.patch,
      path: path,
      queryParameters: queryParameters,
      body: body,
      headers: headers,
      decoder: decoder,
    );
  }

  Future<T> delete<T, D>(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic body,
    Map<String, dynamic>? headers,
    Decoder<D>? decoder,
  }) async {
    return request<T, D>(
      method: RestMethod.delete,
      path: path,
      queryParameters: queryParameters,
      body: body,
      headers: headers,
      decoder: decoder,
    );
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
