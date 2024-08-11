import '../exceptions/parse/parse_exception.dart';

class ParseUtil {
  const ParseUtil._();

  static int parseStringToInt(String value) {
    try {
      return int.parse(value);
    } on FormatException catch (e) {
      throw ParseException(ParseExceptionKind.invalidSourceFormat, e);
    }
  }

  static double parseStringToDouble(String value) {
    try {
      return double.parse(value);
    } on FormatException catch (e) {
      throw ParseException(ParseExceptionKind.invalidSourceFormat, e);
    }
  }
}
