import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/exception/api/api_exception.dart';
import '../../../../../core/utils/utils.index.dart';
import 'base_interceptor.dart';

@Injectable()
class ConnectivityInterceptor extends BaseInterceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final isConnected = await ConnectivityUtils.isConnected();

    if (!isConnected) {
      return handler.reject(
        DioError(
          requestOptions: options,
          error: ApiException(ApiExceptionType.noInternet),
        ),
      );
    }

    return super.onRequest(options, handler);
  }
}
