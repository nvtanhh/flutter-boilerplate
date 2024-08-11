import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/configs/logging_config.dart';
import '../../../../../core/mixins/log_mixin.dart';
import '../../../../../core/utils/log_util.dart';
import 'base_interceptor.dart';

@injectable
class CustomLogInterceptor extends BaseInterceptor with LogMixin {
  CustomLogInterceptor({
    this.enableLogRequestInfo = LogConfig.enableLogRequestInfo,
    this.enableLogSuccessResponse = LogConfig.enableLogSuccessResponse,
    this.enableLogErrorResponse = LogConfig.enableLogErrorResponse,
    this.enableLogHeader = LogConfig.enableLogHeader,
    this.enableLogRequestBody = LogConfig.enableLogRequestBody,
    this.enableLogResponseData = LogConfig.enableLogResponseData,
  });

  final bool enableLogRequestInfo;
  final bool enableLogSuccessResponse;
  final bool enableLogErrorResponse;
  final bool enableLogHeader;
  final bool enableLogRequestBody;
  final bool enableLogResponseData;

  static const _enableLogInterceptor = LogConfig.enableLogInterceptor;

  @override
  int get priority => BaseInterceptor.customLogPriority;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (!_enableLogInterceptor || !enableLogRequestInfo) {
      handler.next(options);

      return;
    }

    final log = <String>[];
    log.add('************ Request ************');
    log.add('🌐 Request: ${options.method} ${options.uri}');
    if (enableLogHeader && options.headers.isNotEmpty) {
      log.add('🌐 Request Headers:');
      log.add('🌐 ${_prettyResponse(options.headers)}');
    }

    if (enableLogRequestBody && options.data != null) {
      log.add('🌐 Request Body:');
      if (options.data is FormData) {
        final data = options.data as FormData;
        if (data.fields.isNotEmpty) {
          log.add('🌐 Fields: ${_prettyResponse(data.fields)}');
        }
        if (data.files.isNotEmpty) {
          log.add(
            '🌐 Files: ${_prettyResponse(data.files.map((e) => MapEntry(e.key, 'File name: ${e.value.filename}, Content type: ${e.value.contentType}, Length: ${e.value.length}')))}',
          );
        }
      } else {
        log.add('🌐 ${_prettyResponse(options.data)}');
      }
    }

    logDebug(log.join('\n'));
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (!_enableLogInterceptor || !enableLogSuccessResponse) {
      handler.next(response);

      return;
    }

    final log = <String>[];

    log.add('************ Request Response ************');
    log.add(
      '🎉 ${response.requestOptions.method} ${response.requestOptions.uri}',
    );

    if (enableLogRequestBody) {
      log.add(
        '🎉 Request Body: ${_prettyResponse(response.requestOptions.data)}',
      );
    }
    log.add('🎉 Success Code: ${response.statusCode}');
    if (enableLogResponseData) {
      log.add('🎉 Response Data: ${_prettyResponse(response.data)}');
    }

    logDebug(log.join('\n'));
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (!_enableLogInterceptor || !enableLogErrorResponse) {
      handler.next(err);

      return;
    }

    final log = <String>[];

    log.add('************ Request Error ************');
    log.add('⛔️ ${err.requestOptions.method} ${err.requestOptions.uri}');
    log.add(
      '⛔️ Error Code: ${err.response?.statusCode ?? 'unknown status code'}',
    );
    log.add('⛔️ Json: ${err.response}');

    logError(log.join('\n'));
    handler.next(err);
  }

  String _prettyResponse(dynamic data) {
    if (data is Map) {
      return LogUtil.prettyJson(data as Map<String, dynamic>);
    }

    return data.toString();
  }
}
