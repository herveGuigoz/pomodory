part of '../hydrated_state_notifier.dart';

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

/// Implementation of [Storage] which uses `PathProvider` and `dart.io`
/// to persist and retrieve state changes from the local device.
class HydratedStorage implements Storage {
  @visibleForTesting
  HydratedStorage(this._box);

  /// Returns an instance of [HydratedStorage].
  /// [storageDirectory] can optionally be provided.
  /// By default, [getTemporaryDirectory] is used.
  ///
  /// With [encryptionCipher] you can provide custom encryption.
  /// Following snippet shows how to make default one:
  /// ```dart
  /// import 'package:crypto/crypto.dart';
  ///
  /// const password = 'hydration';
  /// final byteskey = sha256.convert(utf8.encode(password)).bytes;
  /// return HydratedAesCipher(byteskey);
  /// ```
  static Future<HydratedStorage> build({
    Directory storageDirectory,
    HydratedCipher encryptionCipher,
  }) {
    return _lock.synchronized(() async {
      if (_instance != null) {
        return _instance;
      }
      // Use HiveImpl directly to avoid conflicts with existing Hive.init
      // https://github.com/hivedb/hive/issues/336
      hive = HiveImpl();
      Box<dynamic> box;
      if (isWeb) {
        box = await hive.openBox<dynamic>(
          'hydrated_box',
          encryptionCipher: encryptionCipher,
        );
      } else {
        final directory = storageDirectory ?? await getTemporaryDirectory();
        hive.init(directory.path);
        box = await hive.openBox<dynamic>(
          'hydrated_box',
          encryptionCipher: encryptionCipher,
        );
        await _migrate(directory, box);
      }

      return _instance = HydratedStorage(box);
    });
  }

  static Future _migrate(Directory directory, Box box) async {
    final file = File('${directory.path}/.hydrated_bloc.json');
    // ignore: avoid_slow_async_io
    if (await file.exists()) {
      try {
        final dynamic storageJson = json.decode(await file.readAsString());
        final cache = (storageJson as Map).cast<String, String>();
        for (final key in cache.keys) {
          try {
            final string = cache[key];
            final dynamic object = json.decode(string);
            await box.put(key, object);
          } on dynamic catch (_) {}
        }
      } on dynamic catch (_) {}
      await file.delete();
    }
  }

  /// Internal flag which determines if running on the web platform.
  /// Defaults to [kIsWeb] and is only visible for testing purposes.
  @visibleForTesting
  static bool isWeb = kIsWeb;

  /// Internal instance of [HiveImpl].
  /// It should only be used for testing.
  @visibleForTesting
  static HiveInterface hive;

  static final _lock = Lock();
  static HydratedStorage _instance;

  final Box _box;

  @override
  dynamic read(String key) => _box.isOpen ? _box.get(key) : null;

  @override
  Future<void> write(String key, dynamic value) async {
    if (_box.isOpen) {
      return _lock.synchronized(() => _box.put(key, value));
    }
    // ignore: avoid_returning_null_for_void
    return null;
  }

  @override
  Future<void> delete(String key) async {
    if (_box.isOpen) {
      return _lock.synchronized(() => _box.delete(key));
    }
    // ignore: avoid_returning_null_for_void
    return null;
  }

  @override
  Future<void> clear() async {
    if (_box.isOpen) {
      _instance = null;
      return _lock.synchronized(_box.deleteFromDisk);
    }
    // ignore: avoid_returning_null_for_void
    return null;
  }
}
