import 'base/app_exception.dart';

class AppUncaughtException extends AppException {
  const AppUncaughtException(this.rootError) : super(AppExceptionType.uncaught);

  // Using object because we don't know what type of exception it is
  // ignore: no-object-declaration
  final Object? rootError;

  @override
  String toString() {
    return 'AppUncaughtException{rootError: $rootError}';
  }
}
