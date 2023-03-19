import 'package:hive_flutter/hive_flutter.dart';

import '../constants/env_constants.dart';
import 'di/di.dart';
import 'env_config.dart';

Future<void> configApp({Flavor flavor = Flavor.dev}) async {
  await Hive.initFlutter();
  await configureInjection();
  await EnvConfig.init(flavor: flavor);
}
