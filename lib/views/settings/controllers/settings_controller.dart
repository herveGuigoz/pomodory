part of 'bloc.dart';

class SettingsController extends HydratedStateNotifier<SettingsState> {
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

  void setTheme(PomodoroTheme value) => state = state.copyWith(
        pomodoroThemeName: value.name,
      );

  void setAutoStartWorkTimer({required bool value}) => state = state.copyWith(
        autoStartWorkTimer: value,
      );

  void setAutoStartBreakTimer({required bool value}) => state = state.copyWith(
        autoStartBreakTimer: value,
      );

  void setDesktopNotifications({required bool value}) => state = state.copyWith(
        notifications: value,
      );

  void setNotificationsSound({required bool value}) => state = state.copyWith(
        sound: value,
      );

  void resetAllValues() => state = SettingsState(
        pomodoroThemeName: state.pomodoroThemeName,
      );

  @override
  SettingsState fromJson(Map<String, dynamic> json) {
    return SettingsState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(SettingsState state) {
    return state.toJson();
  }
}
