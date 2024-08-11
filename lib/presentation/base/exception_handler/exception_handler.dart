import 'dart:async';

import 'package:flutter/material.dart';

import '../../../core/exceptions/all.dart';
import '../../../core/extensions/all.dart';
import '../../../core/utils/utils.dart';

class ExceptionHandler {
  const ExceptionHandler({
    required this.context,
    required this.listener,
  });

  final BuildContext context;
  final ExceptionHandlerListener listener;

  Future<void> handleException(
    AppExceptionWrapper appExceptionWrapper, {
    required String exceptionMsg,
    String? exceptionTitle,
  }) async {
    final message = appExceptionWrapper.overrideMessage ?? exceptionMsg;

    switch (appExceptionWrapper.appException.type) {
      case AppExceptionType.api:
        return handleApiException(
          appExceptionWrapper.appException as ApiException,
          exceptionTitle: exceptionTitle,
          message: message,
        );
      case AppExceptionType.parse:
        return;
      // return _showErrorSnackBar(message: message);

      case AppExceptionType.validation:
        // await _showErrorDialog(message: message);
        break;
      case AppExceptionType.uncaught:
      case AppExceptionType.custom:
        return _showAlertDialog(
          message: message,
          title: exceptionTitle,
        );
    }
  }

  FutureOr<void> _showErrorToast({
    required String message,
  }) async {
    return ViewUtil.showToast(message);
  }

  FutureOr<void> _showAlertDialog({
    required String message,
    String? title,
  }) async {
    if (message.isEmpty) {
      return;
    }

    final titleNullable = title.isBlank ? null : title;

    return ViewUtil.showAlertDialog(
      context,
      title: titleNullable ?? '',
      message: message,
    );
  }

  FutureOr<void> handleApiException(
    ApiException appException, {
    required String message,
    String? exceptionTitle,
  }) {
    switch (appException.kind) {
      case ApiExceptionKind.refreshTokenFailed:
        // await _showErrorDialog(
        //   isRefreshTokenFailed: true,
        //   message: message,
        //   onPressed: () {},
        // );
        break;
      case ApiExceptionKind.noAccessTokenFound:
        return _showAlertDialog(message: message);
      case ApiExceptionKind.noInternet:
      case ApiExceptionKind.network:
        return _showErrorToast(message: message);

      case ApiExceptionKind.timeout:
        // await _showErrorDialogWithRetry(
        //   message: message,
        //   onRetryPressed: () {},
        // );
        break;
      case ApiExceptionKind.serverDefined:
        return _showAlertDialog(
          title: 'context.l10n.exception__common_title',
          message: message,
        );
      default:
        break;
    }
  }

  // void _showErrorDialog({
  //   required String message,
  // }) {
  //   if (message.isEmpty) {
  //     return;
  //   }

  //   AppUtils.showAlertDialog(context, message: message);
  // }

  // Future<void> _showErrorDialog({
  //   required String message,
  // }) async {
  // await navigator
  //     .showDialog(
  //   AppPopupInfo.confirmDialog(
  //     message: message,
  //     onPressed: onPressed,
  //   ),
  // )
  //     .then((value) {
  //   if (isRefreshTokenFailed) {
  //     listener.onRefreshTokenFailed();
  //   }
  // });
  // }

  // Future<void> _showErrorDialogWithRetry({
  //   required String message,
  //   required VoidCallback onRetryPressed,
  // }) async {
  // await navigator.showDialog(
  //   AppPopupInfo.errorWithRetryDialog(
  //     message: message,
  //     onRetryPressed: onRetryPressed,
  //   ),
  // );
  // }
}

abstract class ExceptionHandlerListener {
  void onRefreshTokenFailed();
}
