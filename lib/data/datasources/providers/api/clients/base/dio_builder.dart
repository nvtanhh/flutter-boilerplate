import 'package:dio/dio.dart';

import '../../../../../../core/configs/di/di.dart';
import '../../../../../../core/configs/env_config.dart';
import '../../../../../../core/constants/api_constants.dart';

class DioBuilder {
  const DioBuilder._();

  static Dio createDio({
    BaseOptions? options,
  }) {
    return Dio(
      BaseOptions(
        baseUrl: options?.baseUrl ?? getIt.get<EnvConfig>().apiUrl,
        connectTimeout: options?.connectTimeout ?? ApiConstants.connectTimeoutInMs,
        receiveTimeout: options?.receiveTimeout ?? ApiConstants.receiveTimeoutInMs,
        sendTimeout: options?.sendTimeout ?? ApiConstants.sendTimeoutInMs,
      ),
    );
  }
}
