import 'dart:async';

import 'package:flutter/material.dart';

import 'core/config/config.index.dart';
import 'core/utils/utils.index.dart';
import 'presentation/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configApp();
  await runZonedGuarded(_runMyApp, _reportError);
}

Future<void> _runMyApp() async {
  // Load initial resources here if needed
  runApp(const MyApp());
}

void _reportError(Object error, StackTrace stackTrace) {
  final logger = LogUtils.getLogger('Uncaught exception');
  logger.e('', error, stackTrace);

  // report by Firebase Crashlytics here
}
