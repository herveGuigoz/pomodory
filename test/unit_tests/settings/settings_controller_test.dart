import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pomodory/_internal/cache/hydrated_state_notifier.dart';
import 'package:pomodory/core/theme/themes.dart';
import 'package:pomodory/views/settings/controllers/bloc.dart';
import 'package:pomodory/models/settings_state.dart';

class MockStorage extends Mock implements Storage {}

void main() {
  group('SettingsController storage unit tests', () {
    Storage storage;

    setUp(() {
      storage = MockStorage();
      when(storage.write(any, any)).thenAnswer((_) async {});
      HydratedStateNotifier.storage = storage;
    });

    test('default state', () {
      when<dynamic>(storage.read('SettingsController')).thenReturn(null);
      final controller = SettingsController();

      expect(controller.state, SettingsState());
      verify<dynamic>(storage.read('SettingsController')).called(1);
    });

    test(
      'initial timer related state',
      () {
        when<dynamic>(storage.read('SettingsController')).thenReturn(
          SettingsState().toJson(),
        );

        final controller = SettingsController();

        expect(controller.state.focusInMinutes, 25);
        expect(controller.state.shortBreakInMinutes, 5);
        expect(controller.state.longBreakInMinutes, 15);
        expect(controller.state.roundsLength, 4);
      },
    );

    test(
      'initial theme related state',
      () {
        when<dynamic>(storage.read('SettingsController')).thenReturn(
          SettingsState().toJson(),
        );

        final controller = SettingsController();

        expect(themes, isNotEmpty);
        expect(controller.state.pomodoroThemeName, themes.first.name);
      },
    );

    test(
      'initial preferences related state',
      () {
        when<dynamic>(storage.read('SettingsController')).thenReturn(
          SettingsState().toJson(),
        );

        final controller = SettingsController();

        expect(controller.state.desktopNotifications, true);
        expect(controller.state.desktopNotificationsSound, true);
      },
    );

    test('should call storage.write when state is updated', () {
      when<dynamic>(storage.read('SettingsController')).thenReturn(null);
      final controller = SettingsController();
      controller.setFocusDurationAsInt(2);
      controller.setShortBreakDurationAsInt(2);
      controller.setLongBreakDurationAsInt(2);
      controller.setRoundsLength(2);
      final state = controller.state;

      expect(state.focusInMinutes, 2);
      expect(state.shortBreakInMinutes, 2);
      expect(state.longBreakInMinutes, 2);
      expect(state.roundsLength, 2);
      verify<dynamic>(storage.write(any, any)).called(5);
    });

    test('should call storage.write when theme is updated', () {
      when<dynamic>(storage.read('SettingsController')).thenReturn(null);
      final controller = SettingsController();
      final initialValue = controller.state.pomodoroThemeName;
      controller.theme = GithubTheme();
      final newValue = controller.state.pomodoroThemeName;

      expect(initialValue, themes.first.name);
      expect(newValue, 'Github');
      verify<dynamic>(storage.write(any, any)).called(2);
    });

    test('should call storage.write when prefrences are updated', () {
      when<dynamic>(storage.read('SettingsController')).thenReturn(null);
      final controller = SettingsController();
      controller.desktopNotifications = false;
      controller.notificationsSound = false;
      final state = controller.state;

      expect(state.desktopNotifications, false);
      expect(state.desktopNotificationsSound, false);
      verify<dynamic>(storage.write(any, any)).called(3);
    });
  });
}
