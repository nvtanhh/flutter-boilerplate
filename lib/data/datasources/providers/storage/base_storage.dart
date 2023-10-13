// ignore_for_file: unused_element

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class BaseStorage<T> {
  String get boxName;

  Future<Box<T>> _openBox() {
    return Hive.openBox<T>(boxName);
  }

  @protected
  Future<void> put(String key, T value) async {
    final box = await _openBox();
    try {
      await box.put(key, value);
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      await box.close();
    }
  }

  @protected
  Future<T?> get(String key, {T? defaultValue}) async {
    final box = await _openBox();
    try {
      return box.get(key, defaultValue: defaultValue);
    } catch (e) {
      debugPrint(e.toString());

      return defaultValue;
    } finally {
      await box.close();
    }
  }

  @protected
  Future<void> delete(String key) async {
    final box = await _openBox();
    try {
      await box.delete(key);
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      await box.close();
    }
  }

  Future<List<T>> getAll() async {
    final box = await _openBox();
    try {
      return box.values.toList();
    } catch (e) {
      debugPrint(e.toString());

      return [];
    } finally {
      await box.close();
    }
  }

  @protected
  Future<void> clear() async {
    final box = await _openBox();
    try {
      await box.clear();
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      await box.close();
    }
  }
}
