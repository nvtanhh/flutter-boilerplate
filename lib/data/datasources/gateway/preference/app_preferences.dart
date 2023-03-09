import '../../../../core/constants/constants.index.dart';
import 'preference_base.dart';

class AppPreferences extends PreferenceBase<dynamic> {
  Future<AppPreferences> getInstance() async {
    await setup(StorageConstants.appPreferencesBox);

    return this;
  }
}
