import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../../../core/configs/configs.dart';
import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/exceptions/exceptions.dart';
import '../../response_mapper/base_response_mapper.dart';
import 'api_client_default_settings.dart';

enum RestMethod { get, post, put, patch, delete }

class RestApiClient {
  RestApiClient({
    required this.baseUrl,
    this.interceptors = const [],
    this.connectTimeoutInMs =
        const Duration(microseconds: ApiConstants.connectTimeoutInMs),
    this.successResponseMapperType =
        ApiConstants.defaultSuccessResponseMapperType,
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
    bool? returnRawResponse,
  }) async {
    try {
      final response = await _requestByMethod<T>(
        method: method,
        path: path.startsWith(baseUrl) ? path.substring(baseUrl.length) : path,
        queryParameters: queryParameters,
        body: body,
        options: Options(headers: headers),
      );

      if (returnRawResponse ?? false) {
        return response as T;
      }

      return SuccessResponseMapper<D, T>(
        successResponseMapperType ?? this.successResponseMapperType,
      ).map(response.data, decoder);
    } on DioException catch (error) {
      throw getIt<ApiExceptionMapper>().map(error);
    } catch (error) {
      rethrow;
    }
  }

  Future<T> get<T, D>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Decoder<D>? decoder,
    SuccessResponseMapperType? successResponseMapperType,
    bool? returnRawResponse,
  }) async {
    return request<T, D>(
      method: RestMethod.get,
      path: path,
      queryParameters: queryParameters,
      headers: headers,
      decoder: decoder,
      returnRawResponse: returnRawResponse,
    );
  }

  Future<T> post<T, D>(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic body,
    Map<String, dynamic>? headers,
    Decoder<D>? decoder,
    SuccessResponseMapperType? successResponseMapperType,
    bool? returnRawResponse,
  }) async {
    return request<T, D>(
      method: RestMethod.post,
      path: path,
      queryParameters: queryParameters,
      body: body,
      headers: headers,
      decoder: decoder,
      successResponseMapperType: successResponseMapperType,
      returnRawResponse: returnRawResponse,
    );
  }

  Future<T> put<T, D>(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic body,
    Map<String, dynamic>? headers,
    Decoder<D>? decoder,
    SuccessResponseMapperType? successResponseMapperType,
    bool? returnRawResponse,
  }) async {
    return request<T, D>(
      method: RestMethod.put,
      path: path,
      queryParameters: queryParameters,
      body: body,
      headers: headers,
      decoder: decoder,
      successResponseMapperType: successResponseMapperType,
      returnRawResponse: returnRawResponse,
    );
  }

  Future<T> patch<T, D>({
    required String path,
    Map<String, dynamic>? queryParameters,
    dynamic body,
    Map<String, dynamic>? headers,
    Decoder<D>? decoder,
    SuccessResponseMapperType? successResponseMapperType,
    bool? returnRawResponse,
  }) async {
    return request<T, D>(
      method: RestMethod.patch,
      path: path,
      queryParameters: queryParameters,
      body: body,
      headers: headers,
      decoder: decoder,
      successResponseMapperType: successResponseMapperType,
      returnRawResponse: returnRawResponse,
    );
  }

  Future<T> delete<T, D>(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic body,
    Map<String, dynamic>? headers,
    Decoder<D>? decoder,
    SuccessResponseMapperType? successResponseMapperType,
    bool? returnRawResponse,
  }) async {
    return request<T, D>(
      method: RestMethod.delete,
      path: path,
      queryParameters: queryParameters,
      body: body,
      headers: headers,
      decoder: decoder,
      successResponseMapperType: successResponseMapperType,
      returnRawResponse: returnRawResponse,
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

  Future<T> postMultiForm<T, D>(
    String path, {
    required Map<String, dynamic> body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Decoder<D>? decoder,
    SuccessResponseMapperType? successResponseMapperType,
    bool? returnRawResponse,
  }) async {
    final form = await _parseMultiPartForm(body);

    return request<T, D>(
      method: RestMethod.post,
      path: path,
      queryParameters: queryParameters,
      body: FormData.fromMap(form),
      headers: headers,
      decoder: decoder,
      successResponseMapperType: successResponseMapperType,
      returnRawResponse: returnRawResponse,
    );
  }

  Future<Map<String, dynamic>> _parseMultiPartForm(
    Map<String, dynamic> body,
  ) async {
    final form = <String, dynamic>{};

    final bodyKeys = body.keys.toList();

    for (final String key in bodyKeys) {
      final dynamic value = body[key];

      if (value is String || value is bool) {
        form[key] = value.toString();
      } else if (value is List) {
        form[key] =
            value.map((dynamic item) => item.toString()).toList().join(',');
      } else if (value is File) {
        final fileName = value.path.split('/').last;
        form[key] =
            await MultipartFile.fromFile(value.path, filename: fileName);
      } else {
        throw Exception('Unsupported multiform value type');
      }
    }

    return form;
  }
}
