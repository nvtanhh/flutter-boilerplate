import 'package:hive/hive.dart';

// A HIVE facade for the app preferences
abstract class PreferenceBase<T> {
  late final Box _box;

  Box get box => _box;

  Future<void> setup(String boxName) async {
    _box = await Hive.openBox<T>(boxName);
  }

  Future<void> put(String key, T value) async {
    await _box.put(key, value);
  }

  T get(String key, {required T defaultValue}) {
    return _box.get(key, defaultValue: defaultValue) as T;
  }

  Future<void> delete(String key) async {
    await _box.delete(key);
  }

  Future<void> clear() async {
    await _box.clear();
  }

  Future<void> close() async {
    await _box.close();
  }
}
