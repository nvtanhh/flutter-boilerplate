import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../constants/environment_constants.dart';

class EnvironmentConfig extends BaseEnvironmentConfig {
  EnvironmentConfig._();

  static late final Map<String, String> environments;

  @override
  String get apiUrl => environments[EnvironmentConstants.apiUrlKey]!;

  static Future<void> init({AppFlavor flavor = AppFlavor.dev}) async {
    String envFileName;
    switch (flavor) {
      case AppFlavor.dev:
        envFileName = EnvironmentConstants.envFileDev;
        break;
    }
    await dotenv.load(fileName: envFileName);
    environments = dotenv.env;
  }
}

abstract class BaseEnvironmentConfig {
  String get apiUrl;

  static Future<void> init() async {}
}
