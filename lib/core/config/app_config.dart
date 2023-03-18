import 'package:hive_flutter/hive_flutter.dart';

import '../constants/environment_constants.dart';
import 'di/di.dart';
import 'environment_config.dart';

Future<void> configApp({AppFlavor flavor = AppFlavor.dev}) async {
  await Hive.initFlutter();
  await configureInjection();
  await EnvironmentConfig.init(flavor: flavor);
}
