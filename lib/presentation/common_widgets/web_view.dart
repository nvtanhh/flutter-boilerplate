import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'common_widgets.dart';

@RoutePage()
class WebviewPage extends StatefulWidget {
  const WebviewPage({required this.url, super.key});

  final String url;

  @override
  State<WebviewPage> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _initSrv();
  }

  Future<void> _initSrv() async {
    if (Platform.isAndroid) {
      await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);

      final swAvailable =
          await AndroidWebViewFeature.isFeatureSupported(AndroidWebViewFeature.SERVICE_WORKER_BASIC_USAGE);
      final swInterceptAvailable =
          await AndroidWebViewFeature.isFeatureSupported(AndroidWebViewFeature.SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST);

      if (swAvailable && swInterceptAvailable) {
        final serviceWorkerController = AndroidServiceWorkerController.instance();

        serviceWorkerController.setServiceWorkerClient(AndroidServiceWorkerClient(
          shouldInterceptRequest: (request) async {
            return null;
          },
        ));
      }
    }
  }

  Future<void> _onConsoleMessage(
    InAppWebViewController controller,
    ConsoleMessage consoleMessage,
  ) async {
    debugPrint('consoleMessage.message ${consoleMessage.message}');
  }

  void onLoaded() {
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final child = CommonScaffold(
      appBar: CommonAppBar(),
      body: SafeArea(
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(widget.url)),
          onConsoleMessage: _onConsoleMessage,
          onLoadStop: (_, __) => onLoaded(),
          initialOptions: InAppWebViewGroupOptions(
            crossPlatform: InAppWebViewOptions(
              supportZoom: false,
            ),
            ios: IOSInAppWebViewOptions(
              useOnNavigationResponse: true,
            ),
          ),
        ),
      ),
    );

    return Stack(
      children: [child, if (_isLoading) const AppDefaultLoading()],
    );
  }
}
