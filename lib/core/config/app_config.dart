import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import '../../presentation/base/app_bloc_observer.dart';
import '../constants/env_constants.dart';
import 'di/di.dart';
import 'env_config.dart';

Future<void> configApp({Flavor flavor = Flavor.dev}) async {
  await Hive.initFlutter();
  await configureInjection();
  await _configBloc();
  await getIt<EnvConfig>().init(flavor: flavor);
}

Future<void> _configBloc() async {
  Bloc.observer = AppBlocObserver();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb ? HydratedStorage.webStorageDirectory : await getTemporaryDirectory(),
  );
}
