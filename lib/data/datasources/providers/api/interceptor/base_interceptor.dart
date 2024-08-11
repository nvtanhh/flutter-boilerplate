import 'package:dio/dio.dart';

abstract class BaseInterceptor extends InterceptorsWrapper {
  static const retryPriority = 30;
  static const customLogPriority = 1;
  static const connectivityPriority = 99;
  static const basicAuthPriority = 40;
  static const keyAuthPriority = 50;
  static const headerPriority = 19;
  static const accessTokenPriority = 20;
  static const trimPriority = 10;
  static const refreshTokenPriority = 0;

  /// higher, add first
  /// lower, add last
  int get priority;
}
