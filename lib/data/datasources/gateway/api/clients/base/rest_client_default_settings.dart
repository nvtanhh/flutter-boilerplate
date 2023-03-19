import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../middleware/middleware.index.dart';

class ApiClientSettings {
  const ApiClientSettings._();

  static List<Interceptor> requiredInterceptors(Dio dio) => [
        if (kDebugMode) CustomLogInterceptor(),
        ConnectivityInterceptor(),
        TrimInterceptor(),
        RetryInterceptor(dio),
      ];
}
