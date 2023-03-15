import '../utils/log_utils.dart';

mixin LogMixin on Object {
  void logError(Object? message, [dynamic error, StackTrace? stackTrace]) {
    final logger = LogUtils.getLogger(runtimeType.toString());

    logger.e(
      message,
      error,
      stackTrace,
    );
  }

  void logDebug(Object? message, [dynamic error, StackTrace? stackTrace]) {
    final logger = LogUtils.getLogger(runtimeType.toString());

    logger.d(
      message,
      error,
      stackTrace,
    );
  }
}
