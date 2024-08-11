import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../../../../core/configs/configs.dart';
import '../../../../../../core/constants/api_constants.dart';
import '../../../../../mappers/response_mapper/base/base.dart';
import '../../exception_mapper/graphql_api_exception_mapper.dart';
import '../../interceptor/base_interceptor.dart';
import 'api_client_default_settings.dart';
import 'dio_builder.dart';

enum GraphQLMethod { query, mutate }

class GraphQLApiClient {
  GraphQLApiClient({
    this.baseUrl = '',
    this.interceptors = const [],
    Duration? connectTimeoutInMs,
    Duration? sendTimeoutInMs,
    Duration? receiveTimeoutInMs,
    this.defaultErrorResponseMapperType =
        ApiConstants.defaultErrorResponseMapperType,
  }) : _graphQLClient = ValueNotifier<GraphQLClient>(
          GraphQLClient(
            cache: GraphQLCache(store: HiveStore()),
            link: DioLink(
              getIt<EnvConfig>().apiUrl,
              client: DioBuilder.createDio(
                options: BaseOptions(
                  baseUrl: baseUrl,
                  connectTimeout: connectTimeoutInMs,
                  sendTimeout: sendTimeoutInMs,
                  receiveTimeout: receiveTimeoutInMs,
                ),
              ),
            ),
          ),
        ) {
    final List<Interceptor> interceptors = [
      ...ApiClientSettings.requiredInterceptors(_dio),
      ...this.interceptors,
    ];

    interceptors.sort((a, b) => (b is BaseInterceptor ? b.priority : -1)
        .compareTo(a is BaseInterceptor ? a.priority : -1));

    _dio.interceptors.addAll(interceptors);
  }

  final String baseUrl;

  final List<Interceptor> interceptors;
  final ValueNotifier<GraphQLClient> _graphQLClient;

  final ErrorResponseMapperType defaultErrorResponseMapperType;

  Dio get _dio => (_graphQLClient.value.link as DioLink).client;

  Future<T> query<T>({
    required String query,
    Map<String, dynamic> variables = const <String, dynamic>{},
    FetchPolicy? fetchPolicy = FetchPolicy.noCache,
    Decoder<T>? decoder,
    ErrorResponseMapperType? errorResponseMapperType,
  }) async {
    return request<T>(
      method: GraphQLMethod.query,
      query: query,
      variables: variables,
      fetchPolicy: fetchPolicy,
      decoder: decoder,
      errorResponseMapperType: errorResponseMapperType,
    );
  }

  Future<T> mutate<T>({
    required String query,
    Map<String, dynamic> variables = const <String, dynamic>{},
    FetchPolicy? fetchPolicy = FetchPolicy.noCache,
    Decoder<T>? decoder,
    ErrorResponseMapperType? errorResponseMapperType,
  }) async {
    return request<T>(
      method: GraphQLMethod.mutate,
      query: query,
      variables: variables,
      fetchPolicy: fetchPolicy,
      decoder: decoder,
      errorResponseMapperType: errorResponseMapperType,
    );
  }

  Future<T> request<T>({
    required GraphQLMethod method,
    required String query,
    Map<String, dynamic> variables = const <String, dynamic>{},
    FetchPolicy? fetchPolicy = FetchPolicy.noCache,
    Decoder<T>? decoder,
    ErrorResponseMapperType? errorResponseMapperType,
  }) async {
    final response = await _requestByMethod(
      method: method,
      query: query,
      fetchPolicy: fetchPolicy,
      variables: variables,
    );

    if (response.exception != null) {
      throw GraphqlApiExceptionMapper(
        serverErrorMapper: BaseErrorResponseMapper.fromType(
          errorResponseMapperType ?? defaultErrorResponseMapperType,
        ),
      ).map(response.exception!);
    }

    return BaseSuccessResponseMapper<T, T>.fromType(
      SuccessResponseMapperType.jsonObject,
    ).map(response.data, decoder);
  }

  Future<QueryResult> _requestByMethod({
    required GraphQLMethod method,
    required String query,
    required FetchPolicy? fetchPolicy,
    required Map<String, dynamic> variables,
  }) async {
    final document = gql(query);

    switch (method) {
      case GraphQLMethod.query:
        return _graphQLClient.value.query(
          QueryOptions(
            document: document,
            variables: variables,
            fetchPolicy: fetchPolicy,
          ),
        );
      case GraphQLMethod.mutate:
        return _graphQLClient.value.mutate(
          MutationOptions(
            document: document,
            variables: variables,
            fetchPolicy: fetchPolicy,
          ),
        );
    }
  }
}
