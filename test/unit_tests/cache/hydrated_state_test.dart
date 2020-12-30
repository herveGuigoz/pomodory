import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pomodory/core/cache/hydrated_state_notifier.dart';
import 'package:uuid/uuid.dart';

class MockStorage extends Mock implements Storage {}

class MyUuidHydrated extends HydratedStateNotifier<String> {
  MyUuidHydrated() : super(Uuid().v4());

  @override
  Map<String, String> toJson(String state) => {'value': state};

  @override
  String fromJson(dynamic json) => json['value'] as String;
}

class MyHydratedCounter extends HydratedStateNotifier<int> {
  MyHydratedCounter() : super(0);

  void increment() => state++;

  @override
  Map<String, int> toJson(int state) => {'value': state};

  @override
  int fromJson(dynamic json) => json['value'] as int;
}

class MyHydrated extends HydratedStateNotifier<int> {
  MyHydrated([this._id]) : super(0);

  final String _id;

  @override
  String get id => _id;

  @override
  Map<String, int> toJson(int state) => {'value': state};

  @override
  int fromJson(dynamic json) => json['value'] as int;
}

class MyMultiHydrated extends HydratedStateNotifier<int> {
  MyMultiHydrated(String id)
      : _id = id,
        super(0);

  final String _id;

  @override
  String get id => _id;

  @override
  Map<String, int> toJson(int state) => {'value': state};

  @override
  int fromJson(dynamic json) => json['value'] as int;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('Hydrated', () {
    Storage storage;

    setUp(() {
      storage = MockStorage();
      when(storage.write(any, any)).thenAnswer((_) async {});
      HydratedStateNotifier.storage = storage;
    });

    test('reads from storage once upon initialization', () {
      MyHydrated();
      verify<dynamic>(storage.read('MyHydrated')).called(1);
    });

    test(
        'does not read from storage on subsequent state changes '
        'when cache value exists', () {
      when<dynamic>(storage.read('MyHydratedCounter')).thenReturn(
        {'value': 42},
      );
      final counter = MyHydratedCounter();
      expect(counter.state, 42);
      counter.increment();
      expect(counter.state, 43);
      verify<dynamic>(storage.read('MyHydratedCounter')).called(1);
    });

    test(
        'does not read from storage on subsequent state changes '
        'when cache is empty', () {
      when<dynamic>(storage.read('MyHydratedCounter')).thenReturn(null);
      final counter = MyHydratedCounter();
      expect(counter.state, 0);
      counter.increment();
      expect(counter.state, 1);
      verify<dynamic>(storage.read('MyHydratedCounter')).called(1);
    });

    // TODO fix test
    // test(
    //     'does not read from storage on subsequent state changes '
    //     'when cache is malformed', () {
    //   when<dynamic>(storage.read('MyHydratedCounter')).thenReturn('{');
    //   final counter = MyHydratedCounter();
    //   expect(counter.state, 0);
    //   counter.increment();
    //   expect(counter.state, 1);
    //   verify<dynamic>(storage.read('MyHydratedCounter')).called(1);
    // });

    group('SingleHydrated', () {
      test('should throw StorageNotFound when storage is null', () {
        HydratedStateNotifier.storage = null;
        expect(
          () => MyHydrated(),
          throwsA(isA<StorageNotFound>()),
        );
      });

      test('StorageNotFound overrides toString', () {
        expect(
          const StorageNotFound().toString(),
          'Storage was accessed before it was initialized.\n'
          'Please ensure that storage has been initialized.\n\n'
          'For example:\n\n'
          'HydratedStateNotifier.storage = await HydratedStorage.build();',
        );
      });

      test('storage getter returns correct storage instance', () {
        final storage = MockStorage();
        HydratedStateNotifier.storage = storage;
        expect(HydratedStateNotifier.storage, storage);
      });

      test('should call storage.write when onChange is called', () {
        const nextState = 0;
        final expected = <String, int>{'value': 0};
        final notifier = MyHydrated();
        notifier.state = nextState;

        verify(storage.write('MyHydrated', expected)).called(2);
      });

      test('stores initial state when instantiated', () {
        MyHydrated();
        verify<dynamic>(
          storage.write('MyHydrated', {'value': 0}),
        ).called(1);
      });

      test('initial state should return 0 when fromJson returns null', () {
        when<dynamic>(storage.read('MyHydrated')).thenReturn(null);
        expect(MyHydrated().state, 0);
        verify<dynamic>(storage.read('MyHydrated')).called(1);
      });

      // TODO fix test
      // test('initial state should return 0 when deserialization fails', () {
      //   when<dynamic>(storage.read('MyHydrated')).thenThrow(Exception('oops'));
      //   expect(MyHydrated().state, 0);
      //   verify<dynamic>(storage.read('MyHydrated')).called(1);
      // });

      test('initial state should return 101 when fromJson returns 101', () {
        when<dynamic>(storage.read('MyHydrated')).thenReturn({'value': 101});

        expect(MyHydrated().state, 101);
        verify<dynamic>(storage.read('MyHydrated')).called(1);
      });

      group('clear', () {
        test('calls delete on storage', () async {
          await MyHydrated().clear();
          verify(storage.delete('MyHydrated')).called(1);
        });
      });
    });

    group('MultiHydrated', () {
      test('initial state should return 0 when fromJson returns null', () {
        when<dynamic>(storage.read('MyMultiHydratedA')).thenReturn(null);
        expect(MyMultiHydrated('A').state, 0);
        verify<dynamic>(storage.read('MyMultiHydratedA')).called(1);

        when<dynamic>(storage.read('MyMultiHydratedB')).thenReturn(null);
        expect(MyMultiHydrated('B').state, 0);
        verify<dynamic>(storage.read('MyMultiHydratedB')).called(1);
      });

      test('initial state should return 101/102 when fromJson returns 101/102',
          () {
        when<dynamic>(storage.read('MyMultiHydratedA'))
            .thenReturn({'value': 101});
        expect(MyMultiHydrated('A').state, 101);
        verify<dynamic>(storage.read('MyMultiHydratedA')).called(1);

        when<dynamic>(storage.read('MyMultiHydratedB'))
            .thenReturn({'value': 102});
        expect(MyMultiHydrated('B').state, 102);
        verify<dynamic>(storage.read('MyMultiHydratedB')).called(1);
      });

      group('clear', () {
        test('calls delete on storage', () async {
          await MyMultiHydrated('A').clear();
          verify(storage.delete('MyMultiHydratedA')).called(1);
          verifyNever(storage.delete('MyMultiHydratedB'));

          await MyMultiHydrated('B').clear();
          verify(storage.delete('MyMultiHydratedB')).called(1);
        });
      });
    });

    group('MyUuidHydrated', () {
      test('stores initial state when instantiated', () {
        MyUuidHydrated();
        verify<dynamic>(storage.write('MyUuidHydrated', any)).called(1);
      });

      test('correctly caches computed initial state', () {
        dynamic cachedState;
        when<dynamic>(storage.read('MyUuidHydrated')).thenReturn(cachedState);
        MyUuidHydrated();
        cachedState =
            verify(storage.write('MyUuidHydrated', captureAny)).captured.last;
        when<dynamic>(storage.read('MyUuidHydrated')).thenReturn(cachedState);
        MyUuidHydrated();
        final dynamic initialStateB =
            verify(storage.write('MyUuidHydrated', captureAny)).captured.last;
        expect(initialStateB, cachedState);
      });
    });
  });
}
