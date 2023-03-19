import '../base/app_exception.dart';

class ApiException extends AppException {
  ApiException(this.type, {this.exception});

  final ApiExceptionType type;
  final Object? exception;
}

enum ApiExceptionType {
  unknown,
  noInternet,
  network,
  timeout,
  cancellation,
}
