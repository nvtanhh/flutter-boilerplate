// ignore: depend_on_referenced_packages
import 'package:rxdart/rxdart.dart';

import '../config/logging_config.dart';
import '../utils/utils.index.dart';

extension StreamExtension<T> on Stream<T> {
  Stream<T> log(
    String name, {
    bool logOnListen = false,
    bool logOnData = false,
    bool logOnError = false,
    bool logOnDone = false,
    bool logOnCancel = false,
  }) {
    final logger = LogUtils.getLogger(name);

    return doOnListen(() {
      if (LogConfig.logOnStreamListen && logOnListen) {
        logger.d('▶️ onSubscribed');
      }
    }).doOnData((event) {
      if (LogConfig.logOnStreamData && logOnData) {
        logger.d('🟢 onEvent: $event');
      }
    }).doOnCancel(() {
      if (LogConfig.logOnStreamCancel && logOnCancel) {
        logger.d('🟡 onCanceled');
      }
    }).doOnError((e, _) {
      if (LogConfig.logOnStreamError && logOnError) {
        logger.e('🔴 onError $e');
      }
    }).doOnDone(() {
      if (LogConfig.logOnStreamDone && logOnDone) {
        logger.d('☑️️ onCompleted');
      }
    });
  }
}
