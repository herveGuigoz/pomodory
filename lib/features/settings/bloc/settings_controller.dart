part of 'bloc.dart';

class SettingsController extends StateNotifier<SettingsState> {
  SettingsController() : super(SettingsState());

  void setFocusDurationAsInt(int value) => state = state.copyWith(
        focusInMinutes: value,
      );

  void setShortBreakDurationAsInt(int value) => state = state.copyWith(
        shortBreakInMinutes: value,
      );

  void setLongBreakDurationAsInt(int value) => state = state.copyWith(
        longBreakInMinutes: value,
      );

  void setRoundsLength(int value) => state = state.copyWith(
        roundsLength: value,
      );

  set theme(PomodoroTheme value) => state = state.copyWith(
        pomodoroThemeName: value.name,
      );

  set autoStartWorkTimer(bool value) => state = state.copyWith(
        autoStartWorkTimer: value,
      );

  set autoStartBreakTimer(bool value) => state = state.copyWith(
        autoStartBreakTimer: value,
      );

  set desktopNotifications(bool value) => state = state.copyWith(
        desktopNotifications: value,
      );

  set notificationsSound(bool value) => state = state.copyWith(
        desktopNotificationsSound: value,
      );

  void resetAllValues() => state = SettingsState();
}
