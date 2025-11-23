import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/all.dart';
import '../../../../core/extensions/string_extensions.dart';
import 'base_readable_exception_mapper.dart';

typedef CustomExceptionMessageParser = String? Function(
  BuildContext context,
  AppException exception,
);

@lazySingleton
class ExceptionMessageMapper implements BaseReadableExceptionMapper<AppException> {
  ExceptionMessageMapper();

  @override
  String? title(BuildContext context, AppException exception) {
    switch (exception.type) {
      case AppExceptionType.custom:
        return _parseCustomExceptionTitle(context, exception);
      case AppExceptionType.uncaught:
        return 'context.l10n.exception__common_title';
      case AppExceptionType.api:
      case AppExceptionType.parse:
      case AppExceptionType.validation:
        return null;
    }
  }

  String? _parseCustomExceptionTitle(
    BuildContext context,
    AppException exception,
  ) {
    return null;
  }

  @override
  String message(BuildContext context, AppException exception) {
    String? message;
    switch (exception.type) {
      case AppExceptionType.api:
        message = _parseApiExceptionMsg(context, exception as ApiException);
        break;
      case AppExceptionType.custom:
        message = _parseCustomExceptionMsg(context, exception);
        break;
      case AppExceptionType.uncaught:
        message = 'context.l10n.exception__common_message';
        break;
      case AppExceptionType.parse:
        break;
      case AppExceptionType.validation:
        break;
    }

    return message.isNotBlank ? message! : 'context.l10n.exception__common_message';
  }

  String mapMessage(
    BuildContext context,
    AppException appException, {
    CustomExceptionMessageParser? customMessageParser,
  }) {
    if (customMessageParser != null) {
      String? customMessage;
      try {
        customMessage = customMessageParser(context, appException);
      } catch (_) {}

      if (customMessage != null) {
        return customMessage;
      }
    }

    return message(context, appException);
  }

  String? _parseApiExceptionMsg(BuildContext context, ApiException exception) {
    switch (exception.kind) {
      case ApiExceptionKind.noInternet:
        return 'context.l10n.exception__no_internet';
      case ApiExceptionKind.timeout:
        return 'context.l10n.exception__timeout';
      case ApiExceptionKind.serverDefined:
        return parseServerDefinedException(context, exception);
      default:
        return null;
    }
  }

  String parseServerDefinedException(
    BuildContext context,
    ApiException exception,
  ) {
    return 'context.l10n.exception__common_message';
  }

  String? _parseCustomExceptionMsg(
    BuildContext context,
    AppException appException,
  ) {
    return null;
  }
}
