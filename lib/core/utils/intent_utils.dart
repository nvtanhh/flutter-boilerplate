import 'package:url_launcher/url_launcher.dart';

class IntentUtils {
  const IntentUtils._();

  static Future<bool> openBrowserURL({
    required String url,
    bool inApp = false,
  }) async {
    return launchUrl(Uri.parse(url));
  }
}
