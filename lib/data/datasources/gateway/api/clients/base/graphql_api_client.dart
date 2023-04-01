import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../../../../core/config/config.index.dart';
import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/exception/api_exception.dart';
import '../../../shared/shared.dart';
import '../../response_mapper/base_response_mapper.dart';
import 'api_client_default_settings.dart';

enum GraphQLMethod { query, mutate }

class GraphQLApiClient {
  GraphQLApiClient({
    this.baseUrl = '',
    this.interceptors = const [],
    this.connectTimeoutInMs = const Duration(microseconds: ApiConstants.connectTimeoutInMs),
  }) : _graphQLClient = ValueNotifier<GraphQLClient>(
          GraphQLClient(
            cache: GraphQLCache(store: HiveStore()),
            link: DioLink(
              getIt<EnvConfig>().apiUrl,
              client: Dio(
                BaseOptions(
                  baseUrl: baseUrl,
                  connectTimeout: connectTimeoutInMs,
                ),
              ),
            ),
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
  final ValueNotifier<GraphQLClient> _graphQLClient;

  Dio get _dio => (_graphQLClient.value.link as DioLink).client;

  Future<T> query<T>({
    required String query,
    Map<String, dynamic> variables = const <String, dynamic>{},
    FetchPolicy? fetchPolicy = FetchPolicy.noCache,
    Decoder<T>? decoder,
  }) async {
    return request<T>(
      method: GraphQLMethod.query,
      query: query,
      variables: variables,
      fetchPolicy: fetchPolicy,
      decoder: decoder,
    );
  }

  Future<T> mutate<T>({
    required String query,
    Map<String, dynamic> variables = const <String, dynamic>{},
    FetchPolicy? fetchPolicy = FetchPolicy.noCache,
    Decoder<T>? decoder,
  }) async {
    return request<T>(
      method: GraphQLMethod.mutate,
      query: query,
      variables: variables,
      fetchPolicy: fetchPolicy,
      decoder: decoder,
    );
  }

  Future<T> request<T>({
    required GraphQLMethod method,
    required String query,
    Map<String, dynamic> variables = const <String, dynamic>{},
    FetchPolicy? fetchPolicy = FetchPolicy.noCache,
    Decoder<T>? decoder,
  }) async {
    final response = await _requestByMethod(
      method: method,
      query: query,
      fetchPolicy: fetchPolicy,
      variables: variables,
    );

    if (response.exception != null) {
      throw ApiException.fromGraphql(response.exception!);
    }

    return BaseSuccessResponseMapper<T, T>.fromType(SuccessResponseMapperType.jsonObject).map(response.data, decoder);
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
