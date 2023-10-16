import 'dart:convert';
import 'dart:developer' as dev;

import 'package:intl/intl.dart';

import '../configs/logging_config.dart';

enum _LogLevel {
  debug,
  info,
  warning,
  error,
}

class LogUtil {
  const LogUtil._();

  static final _emojiMap = <_LogLevel, String>{
    _LogLevel.debug: '🐛',
    _LogLevel.info: '📝',
    _LogLevel.warning: '🚨',
    _LogLevel.error: '❌',
  };

  static final _colorMap = <_LogLevel, String>{
    _LogLevel.debug: '\x1B[32m', // green
    _LogLevel.info: '\x1B[35m', // purple
    _LogLevel.warning: '\x1B[33m', // yellow
    _LogLevel.error: '\x1B[31m', // red
  };

  static void d(Object? message, {String? name}) {
    _log(_LogLevel.debug, message, name: name);
  }

  static void e(
    Object? message, {
    dynamic error,
    StackTrace? stackTrace,
    String? name,
  }) {
    _log(
      _LogLevel.error,
      message,
      error: error,
      stackTrace: stackTrace,
      name: name,
    );
  }

  static void i(Object? message, {String? name}) {
    _log(_LogLevel.info, message, name: name);
  }

  static String prettyJson(Map<String, dynamic> json) {
    if (!LogConfig.isPrettyJson) {
      return json.toString();
    }

    final indent = '  ' * 2;
    final encoder = JsonEncoder.withIndent(indent);

    return encoder.convert(json);
  }

  static void _log(
    _LogLevel level,
    Object? message, {
    String? name,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (!LogConfig.enableGeneralLog) {
      return;
    }

    final emoji = _emojiMap[level] ?? '';
    final formattedTime = DateFormat('HH:mm:ss.SSS').format(DateTime.now());

    var messageStr = '$formattedTime: $emoji $name: $message';

    if (LogConfig.isColorLog) {
      messageStr = '${_colorMap[level]!}$messageStr\x1B[0m';
      messageStr = '\x1B[32m$messageStr\x1B[0m';
    }

    dev.log(
      messageStr,
      error: error,
      stackTrace: stackTrace,
      time: DateTime.now(),
      level: _toDevLogLevel(level),
    );
  }

  static int _toDevLogLevel(_LogLevel level) {
    switch (level) {
      case _LogLevel.debug:
        return 0;
      case _LogLevel.info:
        return 500;
      case _LogLevel.warning:
        return 900;
      case _LogLevel.error:
        return 1000;
    }
  }
}
