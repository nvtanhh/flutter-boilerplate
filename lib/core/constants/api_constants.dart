import '../../data/datasources/gateway/shared/enums.dart';

class ApiConstants {
  const ApiConstants._();

  static const connectTimeoutInMs = 5000;

  static const maxRetries = 3;
  static const retryInterval = Duration(seconds: 3);

  static const defaultSuccessResponseMapperType = SuccessResponseMapperType.jsonObject;
}
