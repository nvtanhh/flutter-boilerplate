import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import '../../../data/datasources/gateway/preference/app_preferences.dart';
import 'di.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection() async => getIt.init();

@module
abstract class RegisterModule {
  @singleton
  Future<AppPreferences> get appPreferences async => AppPreferences().getInstance();
}
