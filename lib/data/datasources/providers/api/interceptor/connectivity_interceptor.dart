import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/exceptions/api/api_exception.dart';
import '../../../../../core/utils/all.dart';
import 'base_interceptor.dart';

@injectable
class ConnectivityInterceptor extends BaseInterceptor {
  @override
  int get priority => BaseInterceptor.connectivityPriority;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final isConnected = await ConnectivityUtil.isConnected();

    if (!isConnected) {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: const ApiException(kind: ApiExceptionKind.noInternet),
        ),
      );
    }

    return super.onRequest(options, handler);
  }
}
