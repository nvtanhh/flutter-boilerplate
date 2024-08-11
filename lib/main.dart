import 'dart:async';

import 'package:flutter/material.dart';

import 'core/configs/all.dart';
import 'core/utils/all.dart';
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
  LogUtil.e(
    'Uncaught error in Flutter runtime: $error',
    error: error,
    stackTrace: stackTrace,
  );

  // report by Firebase Crashlytics here
}
