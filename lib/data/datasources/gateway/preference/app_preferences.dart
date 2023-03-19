// ignore_for_file: member-ordering
import '../../../../core/constants/constants.index.dart';
import 'base/base_preference.dart';

class AppPreferences extends BasePreference<dynamic> {
  final boxName = StorageConstants.appPreferencesBox;

  Future<AppPreferences> getInstance() async {
    await setup(boxName);

    return this;
  }

  Future<String?> get accessToken async {
    return get(StorageConstants.accessTokenKey, encrypted: true) as Future<String?>;
  }

  Future<void> setAccessToken(String value) async {
    return put(StorageConstants.accessTokenKey, value, encrypted: true);
  }
}
