import '../../data/mappers/response_mapper/base/base.dart';

class ApiConstants {
  const ApiConstants._();

  static const connectTimeoutInMs = Duration(milliseconds: 5000);
  static const receiveTimeoutInMs = Duration(milliseconds: 5000);
  static const sendTimeoutInMs = Duration(milliseconds: 5000);

  static const maxRetries = 3;
  static const retryInterval = Duration(seconds: 3);

  static const defaultSuccessResponseMapperType =
      SuccessResponseMapperType.jsonObject;
  static const ErrorResponseMapperType defaultErrorResponseMapperType =
      ErrorResponseMapperType.jsonObject;
}
