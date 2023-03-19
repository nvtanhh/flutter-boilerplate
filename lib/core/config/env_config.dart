import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../constants/env_constants.dart';

abstract class BaseEnvConfig {
  String get apiUrl;

  static Future<void> init() async {}
}

class EnvConfig extends BaseEnvConfig {
  EnvConfig._();

  static late final Map<String, String> environment;

  @override
  String get apiUrl => environment[EnvConstants.apiUrlKey]!;

  static Future<void> init({Flavor flavor = Flavor.dev}) async {
    String envFileName;
    switch (flavor) {
      case Flavor.dev:
        envFileName = EnvConstants.envFileDev;
        break;
    }
    await dotenv.load(fileName: envFileName);
    environment = dotenv.env;
  }
}
