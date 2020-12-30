import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/theme/themes.dart';

part 'settings_state.freezed.dart';
part 'settings_state.g.dart';

const kMinDurationValue = 1;
const kMaxDurationValue = 90;

const _kDefaultFocusDuration = 25;
const _kDefaultShortBreakDuration = 5;
const _kDefaultLongBreakDuration = 15;

const kMinRoundsNubers = 1;
const kMaxRoundsNubers = 12;
const _kDefaultRoundsLength = 4;

@freezed
abstract class SettingsState implements _$SettingsState {
  SettingsState._();

  factory SettingsState({
    @Default(_kDefaultFocusDuration) int focusInMinutes,
    @Default(_kDefaultShortBreakDuration) int shortBreakInMinutes,
    @Default(_kDefaultLongBreakDuration) int longBreakInMinutes,
    @Default(_kDefaultRoundsLength) int roundsLength,
    @Default('Pomotroid') String pomodoroThemeName,
    @Default(true) bool autoStartWorkTimer,
    @Default(true) bool autoStartBreakTimer,
    @Default(true) bool desktopNotifications,
    @Default(true) bool desktopNotificationsSound,
  }) = _SettingsState;

  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);

  PomodoroTheme get theme => themes.firstWhere(
        (theme) => theme.name == pomodoroThemeName,
        orElse: () => themes.first,
      );
}
