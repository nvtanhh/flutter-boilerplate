import 'package:hive_flutter/hive_flutter.dart';

import 'di/di.dart';

Future<void> configApp() async {
  await configureInjection();
  await Hive.initFlutter();
}
