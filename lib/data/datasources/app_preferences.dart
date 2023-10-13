// ignore_for_file: unused_element

import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../core/constants/constants.dart';
import 'providers/storage/base_storage.dart';

class AppPreferences extends BaseStorage<dynamic> {
  final _encryptionKey = StorageConstants.encryptionKey;
  late Box<dynamic> _encryptedBox;

  final _secureStorage = const FlutterSecureStorage(
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
  );

  @override
  String get boxName => StorageConstants.appPreferencesBox;

  Future<AppPreferences> getInstance() async {
    await _configEncryption();
    _encryptedBox = await _getEncryptedBox();

    return this;
  }

  Future<void> saveIsLoggedIn(bool value) async {
    return put(StorageConstants.isLoggedInKey, value);
  }

  // ######### Private methods  #########

  Future<void> _configEncryption() async {
    final isSaved = await _secureStorage.containsKey(key: _encryptionKey);

    if (!isSaved) {
      final key = Hive.generateSecureKey();
      await _secureStorage.write(
        key: _encryptionKey,
        value: base64UrlEncode(key),
      );
    }
  }

  Future<void> _deleteEncrypted(String key) async {
    await _encryptedBox.delete(key);
  }

  T? _getEncrypted<T>(String key, {T? defaultValue}) {
    return _encryptedBox.get(key, defaultValue: defaultValue);
  }

  Future<Box<T>> _getEncryptedBox<T>() async {
    final encodedKey = await _secureStorage.read(key: _encryptionKey);
    final encryptionKey = base64Url.decode(encodedKey!);

    return Hive.openBox<T>(
      'secure$boxName',
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }

  Future<void> _putEncrypted<T>(String key, T value) async {
    await _encryptedBox.put(key, value);
  }

  // ######### Public methods  #########

  Future<void> saveAccessToken(String value) async {
    return _putEncrypted(StorageConstants.accessTokenKey, value);
  }

  Future<String?> getAccessToken() async {
    return _getEncrypted(
      StorageConstants.accessTokenKey,
      defaultValue: '',
    );
  }

  Future<void> saveRefreshToken(String value) async {
    return _putEncrypted(StorageConstants.refreshTokenKey, value);
  }

  Future<String?> getRefreshToken() async {
    return _getEncrypted(
      StorageConstants.refreshTokenKey,
      defaultValue: '',
    );
  }

  Future<void> deleteAllTokens() async {
    await delete(StorageConstants.accessTokenKey);
    await delete(StorageConstants.refreshTokenKey);
  }
}
