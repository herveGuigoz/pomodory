import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomodory/_internal/cache/src/hydrated_storage.dart';


/// Specialized [StateNotifier] which handles initializing the state
/// based on the persisted state. This allows state to be persisted
/// across hot restarts as well as complete app restarts.
abstract class HydratedStateNotifier<State> extends StateNotifier<State>
    with HydratedMixin {
  /// Initialize [state] and populates the internal storage.
  HydratedStateNotifier(State state) : super(state) {
    hydrate();
  }

  /// Setter for instance of [Storage] which will be used to
  /// manage persisting/restoring the [StateNotifier] state.
  static Storage? _storage;

  static set storage(Storage? storage) => _storage = storage;

  /// Instance of [Storage] which will be used to
  /// manage persisting/restoring the [StateNotifier] state.
  static Storage get storage {
    if (_storage == null) throw const StorageNotFound();
    return _storage!;
  }
}

/// A mixin which enables automatic state persistence for [StateNotifier]
/// classes.
mixin HydratedMixin<State> on StateNotifier<State> {
  /// Populates the internal state storage with the latest state.
  void hydrate() {
    final storage = HydratedStateNotifier.storage;
    try {
      final stateJson = _toJson(state);
      if (stateJson != null) {
        storage.write(storageToken, stateJson).then((_) {}, onError: onError);
      }
    } catch (error, stackTrace) {
      onError?.call(error, stackTrace);
    }
  }

  State? _state;

  @override
  State get state {
    final storage = HydratedStateNotifier.storage;
    if (_state != null) return _state!;
    try {
      final stateJson = storage.read(storageToken) as Map<dynamic, dynamic>?;
      if (stateJson != null) {
        _state = _fromJson(stateJson);
      }
      return _state ??= super.state;
    } catch (error, stackTrace) {
      onError?.call(error, stackTrace);
      return _state = super.state;
    }
  }

  @override
  set state(State value) {
    final storage = HydratedStateNotifier.storage;
    try {
      final stateJson = _toJson(value);
      if (stateJson != null) {
        storage.write(storageToken, stateJson).then((_) {}, onError: onError);
      }
    } catch (error, stackTrace) {
      onError?.call(error, stackTrace);
    }
    _state = value;
    super.state = value;
  }

  State? _fromJson(dynamic json) {
    final dynamic traversedJson = _traverseRead(json);
    final castJson = _cast<Map<String, dynamic>>(traversedJson);
    return fromJson(castJson ?? <String, dynamic>{});
  }

  Map<String, dynamic>? _toJson(State state) {
    return _cast<Map<String, dynamic>>(_traverseWrite(toJson(state)).value);
  }

  dynamic _traverseRead(dynamic value) {
    if (value is Map) {
      return value.map<String, dynamic>((dynamic key, dynamic value) {
        return MapEntry<String, dynamic>(
          _cast<String>(key) ?? '',
          _traverseRead(value),
        );
      });
    }
    if (value is List) {
      for (var i = 0; i < value.length; i++) {
        value[i] = _traverseRead(value[i]);
      }
    }
    return value;
  }

  T? _cast<T>(dynamic x) => x is T ? x : null;

  _Traversed _traverseWrite(Object? value) {
    final dynamic traversedAtomicJson = _traverseAtomicJson(value);
    if (traversedAtomicJson is! NIL) {
      return _Traversed.atomic(traversedAtomicJson);
    }
    final dynamic traversedComplexJson = _traverseComplexJson(value);
    if (traversedComplexJson is! NIL) {
      return _Traversed.complex(traversedComplexJson);
    }
    try {
      _checkCycle(value);
      final dynamic customJson = _toEncodable(value);
      final dynamic traversedCustomJson = _traverseJson(customJson);
      if (traversedCustomJson is NIL) {
        throw HydratedUnsupportedError(value);
      }
      _removeSeen(value);
      return _Traversed.complex(traversedCustomJson);
      // ignore: avoid_catching_errors
    } on HydratedCyclicError catch (e) {
      throw HydratedUnsupportedError(value, cause: e);
    }
  }

  dynamic _traverseAtomicJson(dynamic object) {
    if (object is num) {
      if (!object.isFinite) return const NIL();
      return object;
    } else if (identical(object, true)) {
      return true;
    } else if (identical(object, false)) {
      return false;
    } else if (object == null) {
      return null;
    } else if (object is String) {
      return object;
    }
    return const NIL();
  }

  dynamic _traverseComplexJson(dynamic object) {
    if (object is List) {
      if (object.isEmpty) return object;
      _checkCycle(object);
      List<dynamic>? list;
      for (var i = 0; i < object.length; i++) {
        final traversed = _traverseWrite(object[i]);
        list ??= traversed.outcome == _Outcome.atomic
            ? object.sublist(0)
            : (<dynamic>[]..length = object.length);
        list[i] = traversed.value;
      }
      _removeSeen(object);
      return list;
    } else if (object is Map) {
      _checkCycle(object);
      final map = <String, dynamic>{};
      object.forEach((dynamic key, dynamic value) {
        final castKey = _cast<String>(key);
        if (castKey != null) {
          map[castKey] = _traverseWrite(value).value;
        }
      });
      _removeSeen(object);
      return map;
    }
    return const NIL();
  }

  dynamic _traverseJson(dynamic object) {
    final dynamic traversedAtomicJson = _traverseAtomicJson(object);
    return traversedAtomicJson is! NIL
        ? traversedAtomicJson
        : _traverseComplexJson(object);
  }

  // ignore: avoid_dynamic_calls
  dynamic _toEncodable(dynamic object) => object.toJson();

  final List _seen = <dynamic>[];

  void _checkCycle(Object? object) {
    for (var i = 0; i < _seen.length; i++) {
      if (identical(object, _seen[i])) {
        throw HydratedCyclicError(object);
      }
    }
    _seen.add(object);
  }

  void _removeSeen(dynamic object) {
    assert(_seen.isNotEmpty);
    assert(identical(_seen.last, object));
    _seen.removeLast();
  }

  /// [id] is used to uniquely identify multiple instances
  /// of the same [HydratedStateNotifier] type.
  /// In most cases it is not necessary;
  /// however, if you wish to intentionally have multiple instances
  /// of the same [HydratedStateNotifier], then you must override [id]
  /// and return a unique identifier for each [HydratedStateNotifier] instance
  /// in order to keep the caches independent of each other.
  String get id => '';

  /// `storageToken` is used as registration token for hydrated storage.
  @nonVirtual
  String get storageToken => '${runtimeType.toString()}$id';

  /// [clear] is used to wipe or invalidate the cache of a
  /// [HydratedStateNotifier].
  /// Calling [clear] will delete the cached state of the state notifier
  /// but will not modify the current state of the state notifier.
  Future<void> clear() => HydratedStateNotifier.storage.delete(storageToken);

  /// Responsible for converting the `Map<String, dynamic>` representation
  /// of the state into a concrete instance of the notifier state.
  State? fromJson(Map<String, dynamic> json);

  /// Responsible for converting a concrete instance of the state
  /// into the the `Map<String, dynamic>` representation.
  ///
  /// If [toJson] returns `null`, then no state changes will be persisted.
  Map<String, dynamic>? toJson(State state);
}

/// Reports that an object could not be serialized due to cyclic references.
/// When the cycle is detected, a [HydratedCyclicError] is thrown.
class HydratedCyclicError extends HydratedUnsupportedError {
  /// The first object that was detected as part of a cycle.
  HydratedCyclicError(Object? object) : super(object);

  @override
  String toString() => 'Cyclic error while state traversing';
}

/// Exception thrown if there was no [HydratedStorage] specified.
class StorageNotFound implements Exception {
  /// Create new StorageNotFound exception.
  const StorageNotFound();

  @override
  String toString() {
    return 'Storage was accessed before it was initialized.\n'
        'Please ensure that storage has been initialized.\n\n'
        'For example:\n\n'
        'HydratedStateNotifier.storage = await HydratedStateNotifier.build();';
  }
}

/// Reports that an object could not be serialized.
class HydratedUnsupportedError extends Error {
  /// Describe wich object that could not be serialized and why.
  HydratedUnsupportedError(this.unsupportedObject, {this.cause});

  /// The object that could not be serialized.
  final Object? unsupportedObject;

  /// The exception thrown when trying to convert the object.
  final Object? cause;

  @override
  String toString() {
    final safeString = Error.safeToString(unsupportedObject);
    final prefix = cause != null
        ? 'Converting object to an encodable object failed:'
        : 'Converting object did not return an encodable object:';
    return '$prefix $safeString';
  }
}

/// Type which represents objects that do not support json encoding
@visibleForTesting
class NIL {
  /// Should only be used for testing purposes.
  const NIL();
}

enum _Outcome { atomic, complex }

class _Traversed {
  _Traversed._({required this.outcome, required this.value});

  _Traversed.atomic(dynamic value)
      : this._(outcome: _Outcome.atomic, value: value);

  _Traversed.complex(dynamic value)
      : this._(outcome: _Outcome.complex, value: value);

  final _Outcome outcome;
  final dynamic value;
}
