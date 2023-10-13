import 'dart:convert';

import 'package:logger/logger.dart';

import '../config/configs.dart';

class LogUtils {
  LogUtils._();

  static Logger getLogger(String className) {
    return Logger(
      printer: _LogPrinter(className),
      filter: _LogFilter(),
    );
  }

  static String prettyJson(Map<String, dynamic> json) {
    if (!LogConfig.isPrettyJson) {
      return json.toString();
    }

    final indent = '  ' * 2;
    final encoder = JsonEncoder.withIndent(indent);

    return encoder.convert(json);
  }
}

class _LogPrinter extends PrettyPrinter {
  _LogPrinter(this.className);

  final _prettyPrinter = PrettyPrinter();

  final String className;

  @override
  List<String> log(LogEvent event) {
    final color = LogConfig.isColorLog && _prettyPrinter.levelColors != null
        ? _prettyPrinter.levelColors![event.level]
        : const AnsiColor.none();
    final emoji = _prettyPrinter.levelEmojis?[event.level];
    final time = getTime(event.time);

    final msg = '($time) $emoji [$className] ${event.message}';

    String? stackTraceStr;
    if (event.stackTrace != null) {
      stackTraceStr = formatStackTrace(event.stackTrace, errorMethodCount);
    }

    return [
      color!(msg),
      if (event.error != null) color(event.error.toString()),
      if (stackTraceStr != null)
        stackTraceStr.split('\n').map(color).join('\n'),
    ];
  }

  @override
  String getTime(DateTime time) {
    String threeDigits(int n) {
      if (n >= 100) {
        return '$n';
      }
      if (n >= 10) {
        return '0$n';
      }

      return '00$n';
    }

    String twoDigits(int n) {
      if (n >= 10) {
        return '$n';
      }

      return '0$n';
    }

    final now = DateTime.now();
    final hr = twoDigits(now.hour);
    final min = twoDigits(now.minute);
    final sec = twoDigits(now.second);
    final ms = threeDigits(now.millisecond);

    return '$hr:$min:$sec$ms';
  }
}

class _LogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return LogConfig.enableGeneralLog;
  }
}
