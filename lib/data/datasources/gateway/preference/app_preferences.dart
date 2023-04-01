// ignore_for_file: member-ordering
import '../../../../core/constants/constants.dart';
import 'base/base_preference.dart';

class AppPreferences extends BasePreference<dynamic> {
  final boxName = StorageConstants.appPreferencesBox;

  Future<AppPreferences> getInstance() async {
    await setup(boxName);

    return this;
  }

  Future<void> saveAccessToken(String value) async {
    return put(StorageConstants.accessTokenKey, value, encrypted: true);
  }

  Future<String> get accessToken async {
    return get(StorageConstants.accessTokenKey, defaultValue: '', encrypted: true) as Future<String>;
  }

  Future<void> saveRefreshToken(String value) async {
    return put(StorageConstants.refreshTokenKey, value, encrypted: true);
  }

  Future<String> get refreshToken async {
    return get(StorageConstants.refreshTokenKey, defaultValue: '', encrypted: true) as Future<String>;
  }
}
