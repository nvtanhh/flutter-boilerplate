import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/constants/storage_constants.dart';

// A HIVE facade for the app preferences
abstract class BasePreference<T> {
  late final Box<T> _box;
  late final String _boxName;

  @protected
  Future<void> setup(String boxName) async {
    _boxName = boxName;
    _box = await Hive.openBox<T>(boxName);
    await _configEncryption();
  }

  Future<void> _configEncryption() async {
    const secureStorage = FlutterSecureStorage();

    final isSaved = await secureStorage.containsKey(key: StorageConstants.encryptionKey);

    if (!isSaved) {
      final key = Hive.generateSecureKey();
      await secureStorage.write(key: StorageConstants.encryptionKey, value: base64UrlEncode(key));
    }
  }

  Future<void> _ensureBoxIsOpen() async {
    if (!_box.isOpen) {
      _box = await Hive.openBox<T>(_boxName);
    }
  }

  @protected
  Future<void> put(String key, T value, {bool encrypted = false}) async {
    if (encrypted) {
      final encryptedBox = await _getEncryptedBox();
      await encryptedBox.put(key, value);
      await encryptedBox.close();

      return;
    }

    await _box.put(key, value);
  }

  @protected
  T? get(String key, {T? defaultValue}) {
    return _box.get(key, defaultValue: defaultValue);
  }

  @protected
  Future<T?> getEncrypted(String key, {T? defaultValue}) async {
    final encryptedBox = await _getEncryptedBox();

    final result = encryptedBox.get(key, defaultValue: defaultValue);
    await encryptedBox.close();

    return result;
  }

  @protected
  Future<void> delete(String key) async {
    await _box.delete(key);
  }

  @protected
  Future<void> clear() async {
    await _box.clear();
  }

  @protected
  Future<void> close() async {
    await _box.close();
  }

  Future<Box<T>> _getEncryptedBox() async {
    const secureStorage = FlutterSecureStorage();

    final encodedKey = await secureStorage.read(key: StorageConstants.encryptionKey);
    final encryptionKey = base64Url.decode(encodedKey!);

    return Hive.openBox<T>(_boxName, encryptionCipher: HiveAesCipher(encryptionKey));
  }
}
