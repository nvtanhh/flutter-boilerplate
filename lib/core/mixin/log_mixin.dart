import '../config/config.index.dart';

mixin LogMixin on Object {
  void logError(Object? message, [dynamic error, StackTrace? stackTrace]) {
    final logger = getLogger(runtimeType.toString());

    logger.e(
      message,
      error,
      stackTrace,
    );
  }

  void logDebug(Object? message, [dynamic error, StackTrace? stackTrace]) {
    final logger = getLogger(runtimeType.toString());

    logger.d(
      message,
      error,
      stackTrace,
    );
  }
}
