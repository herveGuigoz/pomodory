import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../core/theme/themes.dart';

part 'settings_controller.freezed.dart';
part 'settings_controller.g.dart';

const kMinDurationValue = 1;
const kMaxDurationValue = 90;

const _kDefaultFocusDuration = 25;
const _kDefaultShortBreakDuration = 5;
const _kDefaultLongBreakDuration = 15;

const kMinRoundsNubers = 1;
const kMaxRoundsNubers = 12;
const _kDefaultRoundsLength = 4;

class SettingsController extends StateNotifier<Settings> {
  SettingsController() : super(Settings());

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

  void resetAllValues() => state = Settings();
}

@freezed
abstract class Settings implements _$Settings {
  Settings._();

  factory Settings({
    @Default(_kDefaultFocusDuration) int focusInMinutes,
    @Default(_kDefaultShortBreakDuration) int shortBreakInMinutes,
    @Default(_kDefaultLongBreakDuration) int longBreakInMinutes,
    @Default(_kDefaultRoundsLength) int roundsLength,
    @Default('Pomotroid') String pomodoroThemeName,
    @Default(true) bool autoStartWorkTimer,
    @Default(true) bool autoStartBreakTimer,
    @Default(true) bool desktopNotifications,
    @Default(true) bool desktopNotificationsSound,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);

  PomodoroTheme get theme => themes.firstWhere(
        (theme) => theme.name == pomodoroThemeName,
        orElse: () => themes.first,
      );
}

final settingsProvider = StateNotifierProvider(
  (_) => SettingsController(),
);

final themeProvider = Provider((ref) {
  final settings = ref.watch(settingsProvider.state);
  return settings.theme;
});
