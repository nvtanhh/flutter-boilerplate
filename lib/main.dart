import 'dart:async';

import 'package:flutter/material.dart';

import 'core/configs/configs.dart';
import 'core/utils/utils.index.dart';
import 'presentation/app.dart';

Future<void> main() async {
  await runZonedGuarded(_runMyApp, _reportError);
}

Future<void> _runMyApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configApp();
  runApp(const MyApp());
}

void _reportError(Object error, StackTrace stackTrace) {
  final logger = LogUtils.getLogger('Uncaught exception');
  logger.e('', error: error, stackTrace: stackTrace);

  // report by Firebase Crashlytics here
}
