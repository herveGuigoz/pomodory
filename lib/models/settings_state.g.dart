// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsState _$$_SettingsStateFromJson(Map<String, dynamic> json) =>
    _$_SettingsState(
      focusInMinutes: json['focusInMinutes'] as int? ?? _kDefaultFocusDuration,
      shortBreakInMinutes:
          json['shortBreakInMinutes'] as int? ?? _kDefaultShortBreakDuration,
      longBreakInMinutes:
          json['longBreakInMinutes'] as int? ?? _kDefaultLongBreakDuration,
      roundsLength: json['roundsLength'] as int? ?? _kDefaultRoundsLength,
      pomodoroThemeName: json['pomodoroThemeName'] as String? ?? 'Pomotroid',
      autoStartWorkTimer: json['autoStartWorkTimer'] as bool? ?? true,
      autoStartBreakTimer: json['autoStartBreakTimer'] as bool? ?? true,
      notifications: json['notifications'] as bool? ?? true,
      sound: json['sound'] as bool? ?? true,
    );

Map<String, dynamic> _$$_SettingsStateToJson(_$_SettingsState instance) =>
    <String, dynamic>{
      'focusInMinutes': instance.focusInMinutes,
      'shortBreakInMinutes': instance.shortBreakInMinutes,
      'longBreakInMinutes': instance.longBreakInMinutes,
      'roundsLength': instance.roundsLength,
      'pomodoroThemeName': instance.pomodoroThemeName,
      'autoStartWorkTimer': instance.autoStartWorkTimer,
      'autoStartBreakTimer': instance.autoStartBreakTimer,
      'notifications': instance.notifications,
      'sound': instance.sound,
    };
