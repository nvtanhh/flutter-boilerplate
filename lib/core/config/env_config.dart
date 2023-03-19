import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

import '../constants/env_constants.dart';

abstract class BaseEnvConfig {
  String get apiUrl;

  @protected
  Future<void> init() async {}
}

@singleton
class EnvConfig extends BaseEnvConfig {
  static late final Map<String, String> environment;

  @override
  String get apiUrl => environment[EnvConstants.apiUrlKey]!;

  @override
  Future<void> init({Flavor flavor = Flavor.dev}) async {
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
