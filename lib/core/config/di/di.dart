import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../data/datasources/app_preferences.dart';
import 'di.config.dart';
import 'raw_config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection() async => getIt.init();

@module
abstract class RegisterModule {
  @preResolve
  @singleton
  Future<AppPreferences> get appPreferences async =>
      AppPreferences().getInstance();

  @singleton
  @preResolve
  Future<RawConfig> config() async {
    // const environment =
    //     String.fromEnvironment('FLAVOR', defaultValue: 'development');
    // await dotenv.load(fileName: 'env/.env.$environment');
    await dotenv.load(fileName: 'env/.env');

    return RawConfig.from(dotenv.env);
  }
}
