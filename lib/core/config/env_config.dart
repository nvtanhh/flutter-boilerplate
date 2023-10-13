import 'package:injectable/injectable.dart';

import '../constants/env_constants.dart';
import 'di/raw_config.dart';

abstract class BaseEnvConfig {
  String get apiUrl;
}

@singleton
class EnvConfig extends BaseEnvConfig {
  EnvConfig(this._config);

  final RawConfig _config;

  @override
  String get apiUrl => _config[EnvConstants.apiUrlKey]!;

  // static late final Map<String, String> environment;

  // @override
  // String get apiUrl => environment[EnvConstants.apiUrlKey]!;

  // @override
  // Future<void> init({Flavor flavor = Flavor.dev}) async {
  //   String envFileName;
  //   switch (flavor) {
  //     case Flavor.dev:
  //       envFileName = EnvConstants.envFileDev;
  //       break;
  //   }
  //   await dotenv.load(fileName: envFileName);
  //   environment = dotenv.env;
  // }
}
