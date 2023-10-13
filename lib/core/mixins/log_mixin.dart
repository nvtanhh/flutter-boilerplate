import '../utils/log_utils.dart';

mixin LogMixin on Object {
  void logInfo(Object? message) {
    final logger = LogUtils.getLogger(runtimeType.toString());

    logger.i(message);
  }

  void logDebug(Object? message, {String? name}) {
    final logger = LogUtils.getLogger(name ?? runtimeType.toString());

    logger.d(message);
  }

  void logError(Object? message, [dynamic error, StackTrace? stackTrace]) {
    final logger = LogUtils.getLogger(runtimeType.toString());

    logger.e(message, error: error, stackTrace: stackTrace);
  }

  void logErrorWithName(
    Object? message, {
    dynamic error,
    StackTrace? stackTrace,
    String? name,
  }) {
    final logger = LogUtils.getLogger(name ?? runtimeType.toString());

    logger.e(message, error: error, stackTrace: stackTrace);
  }
}
