import 'package:logger/logger.dart';

import 'logging_config.dart';

Logger getLogger(String className) {
  return Logger(
    printer: _LogPrinter(className),
    filter: _LogFilter(),
  );
}

class _LogPrinter extends PrettyPrinter {
  _LogPrinter(this.className);

  final String className;

  @override
  List<String> log(LogEvent event) {
    final color = LogConfig.isColorLog
        ? PrettyPrinter.levelColors[event.level]
        : AnsiColor.none();
    final emoji = PrettyPrinter.levelEmojis[event.level];
    final time = getTime();

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
  String getTime() {
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
