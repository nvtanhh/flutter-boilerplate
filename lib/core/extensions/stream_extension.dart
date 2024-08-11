// ignore: depend_on_referenced_packages
import 'package:rxdart/rxdart.dart';

import '../configs/logging_config.dart';
import '../utils/all.dart';

extension StreamExtension<T> on Stream<T> {
  Stream<T> log(
    String name, {
    bool logOnListen = false,
    bool logOnData = false,
    bool logOnError = false,
    bool logOnDone = false,
    bool logOnCancel = false,
  }) {
    return doOnListen(() {
      if (LogConfig.logOnStreamListen && logOnListen) {
        LogUtil.d('▶️ onSubscribed', name: name);
      }
    }).doOnData((event) {
      if (LogConfig.logOnStreamData && logOnData) {
        LogUtil.d('🟢 onEvent: $event', name: name);
      }
    }).doOnCancel(() {
      if (LogConfig.logOnStreamCancel && logOnCancel) {
        LogUtil.d('🟡 onCanceled', name: name);
      }
    }).doOnError((e, _) {
      if (LogConfig.logOnStreamError && logOnError) {
        LogUtil.e('🔴 onError $e', name: name);
      }
    }).doOnDone(() {
      if (LogConfig.logOnStreamDone && logOnDone) {
        LogUtil.d('✅ onCompleted', name: name);
      }
    });
  }
}
