import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pomodory/core/theme/src/theme.dart';
import 'package:pomodory/core/theme/themes.dart';

part 'settings_state.freezed.dart';
part 'settings_state.g.dart';

const kMinDurationValue = 1;
const kMaxDurationValue = 90;

const _kDefaultFocusDuration = 25;
const _kDefaultShortBreakDuration = 5;
const _kDefaultLongBreakDuration = 15;

const kMinRoundsNumbers = 1;
const kMaxRoundsNumbers = 12;
const _kDefaultRoundsLength = 4;

@freezed
class SettingsState with _$SettingsState {
  factory SettingsState({
    @Default(_kDefaultFocusDuration) int focusInMinutes,
    @Default(_kDefaultShortBreakDuration) int shortBreakInMinutes,
    @Default(_kDefaultLongBreakDuration) int longBreakInMinutes,
    @Default(_kDefaultRoundsLength) int roundsLength,
    @Default('Pomotroid') String pomodoroThemeName,
    @Default(true) bool autoStartWorkTimer,
    @Default(true) bool autoStartBreakTimer,
    @Default(true) bool notifications,
    @Default(true) bool sound,
  }) = _SettingsState;

  SettingsState._();

  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);

  PomodoroTheme get theme => themes.firstWhere(
        (theme) => theme.name == pomodoroThemeName,
        orElse: () => themes.first,
      );
}
