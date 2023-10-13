import 'dart:collection';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../repositories/refresh_token_repo.dart';
import '../../gateway.dart';
import 'base_interceptor.dart';

@injectable
class RefreshTokenInterceptor extends BaseInterceptor {
  RefreshTokenInterceptor(this._repository, this._client);

  final RefreshTokenRepository _repository;
  final UnAuthenticatedRestApiClient _client;

  bool _isRefreshing = false;
  final Queue _pendingRequests = Queue<PendingRequest>();

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      final options = err.response!.requestOptions;
      _onTokenExpired(options, handler);
    } else {
      handler.next(err);
    }
  }

  Future<void> _onTokenExpired(
      RequestOptions options, ErrorInterceptorHandler handler) async {
    _pendingRequests.add(PendingRequest(options, handler));

    if (_isRefreshing) {
      return;
    }

    try {
      _isRefreshing = true;
      await _repository.refreshToken();
      await _onRefreshTokenSuccess();
    } catch (e) {
      _onRefreshTokenError(e);
    }
    _isRefreshing = false;
    _pendingRequests.clear();
  }

  Future<void> _onRefreshTokenSuccess() async {
    while (_pendingRequests.isNotEmpty) {
      final pendingRequest = _pendingRequests.removeFirst() as PendingRequest;
      final options = pendingRequest.options;
      final handler = pendingRequest.handler;

      try {
        final response = await _client.fetch<dynamic>(options);
        handler.resolve(response);
      } on DioException catch (error) {
        handler.next(DioException(requestOptions: options, error: error));
      }
    }
  }

  void _onRefreshTokenError(Object? error) {
    while (_pendingRequests.isNotEmpty) {
      final pendingRequest = _pendingRequests.removeFirst() as PendingRequest;
      final options = pendingRequest.options;
      final handler = pendingRequest.handler;

      handler.next(DioException(requestOptions: options, error: error));
    }
  }
}

class PendingRequest {
  PendingRequest(this.options, this.handler);

  final RequestOptions options;
  final ErrorInterceptorHandler handler;
}
