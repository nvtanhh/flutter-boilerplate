import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../presentation/common_widgets/web_view.dart';

class IntentUtil {
  const IntentUtil._();

  static Future<bool> openBrowserURL({
    required String url,
    bool inApp = false,
  }) async {
    return launchUrl(Uri.parse(url));
  }

  static Future<Future<Object?>> openWebviewURL(
    BuildContext context,
    String url,
  ) async {
    return Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => WebviewPage(url: url)),
    );
  }
}
