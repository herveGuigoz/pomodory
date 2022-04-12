import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
// ignore: implementation_imports
import 'package:hive/src/hive_impl.dart';
import 'package:synchronized/synchronized.dart';

/// Interface which is used to persist and retrieve state changes.
abstract class Storage {
  /// Returns value for key
  dynamic read(String key);

  /// Persists key value pair
  Future<void> write(String key, dynamic value);

  /// Deletes key value pair
  Future<void> delete(String key);

  /// Clears all key value pairs from storage
  Future<void> clear();
}

/// Implementation of [Storage] which uses [package:hive](https://pub.dev/packages/hive)
/// to persist and retrieve state changes from the local device.
class HydratedStorage implements Storage {
  /// Initialize [Box]
  HydratedStorage(this._box);

  /// Internal instance of [HiveImpl].
  /// It should only be used for testing.
  @visibleForTesting
  static late HiveInterface hive;

  static final _lock = Lock();
  static HydratedStorage? _instance;

  final Box _box;

  /// Path for storage in web applications.
  static final webStorageDirectory = Directory('');

  /// Returns an instance of [HydratedStorage].
  static Future<HydratedStorage> build({
    required Directory storageDirectory,
  }) {
    return _lock.synchronized(() async {
      if (_instance != null) return _instance!;
      hive = HiveImpl();
      Box<dynamic> box;

      if (storageDirectory == webStorageDirectory) {
        box = await hive.openBox<dynamic>('hydrated_box');
      } else {
        hive.init(storageDirectory.path);
        box = await hive.openBox<dynamic>('hydrated_box');
        await _migrate(storageDirectory, box);
      }

      return _instance = HydratedStorage(box);
    });
  }

  static Future _migrate(Directory directory, Box box) async {
    final file = File('${directory.path}/.storage.json');
    // ignore: avoid_slow_async_io
    if (await file.exists()) {
      try {
        final dynamic storageJson = json.decode(await file.readAsString());
        final cache = (storageJson as Map).cast<String, String>();
        for (final key in cache.keys) {
          try {
            final string = cache[key];
            final dynamic object = json.decode(string ?? '');
            await box.put(key, object);
          } catch (_) {}
        }
      } catch (_) {}
      await file.delete();
    }
  }

  @override
  dynamic read(String key) {
    return _box.isOpen ? _box.get(key) : null;
  }

  @override
  Future<void> write(String key, dynamic value) async {
    if (_box.isOpen) {
      return _lock.synchronized(() => _box.put(key, value));
    }
  }

  @override
  Future<void> delete(String key) async {
    if (_box.isOpen) {
      return _lock.synchronized(() => _box.delete(key));
    }
  }

  @override
  Future<void> clear() async {
    if (_box.isOpen) {
      _instance = null;
      return _lock.synchronized(_box.clear);
    }
  }
}
