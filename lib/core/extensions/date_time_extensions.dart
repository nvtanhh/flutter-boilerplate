import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String toLocaleString() {
    return DateFormat.yMMMMEEEEd().format(this);
  }

  String toStringWithFormat(String format) {
    return DateFormat(format).format(this);
  }

  DateTime get lastDateOfMonth {
    return DateTime(year, month + 1, 0);
  }

  bool isSameDay(DateTime dateTime) {
    return year == dateTime.year && month == dateTime.month && day == dateTime.day;
  }

  bool get isToday => isSameDay(DateTime.now());
  bool get isPast => isBefore(DateTime.now());
  bool get isYesterday => isSameDay(DateTime.now().subtract(const Duration(days: 1)));
  bool get isLastWeek => isAfter(DateTime.now().subtract(const Duration(days: 7)));
}
