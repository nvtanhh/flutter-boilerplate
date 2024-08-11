import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'base_interceptor.dart';

@injectable
class TrimInterceptor extends BaseInterceptor {
  @override
  int get priority => BaseInterceptor.trimPriority;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.data is Map) {
      final data = options.data as Map;
      data.forEach((dynamic key, dynamic value) {
        if (value is String) {
          data[key] = value.trim();
        }
      });
    }

    handler.next(options);
  }
}
