import '../api/api_exception.dart';
import 'app_exception.dart';

abstract class ExceptionMapper<T extends AppException> {
  T? map(Object? exception);
}

abstract class ApiExceptionMapper implements ExceptionMapper<ApiException> {
  const ApiExceptionMapper();
}
