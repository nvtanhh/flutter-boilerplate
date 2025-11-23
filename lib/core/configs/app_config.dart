import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import '../../presentation/base/bloc/app_bloc_observer.dart';
import 'di/di.dart';

Future<void> configApp() async {
  await Hive.initFlutter();
  await configureInjection();
  await _configBloc();
}

Future<void> _configBloc() async {
  Bloc.observer = AppBlocObserver();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory:
        kIsWeb ? HydratedStorageDirectory.web : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
}
