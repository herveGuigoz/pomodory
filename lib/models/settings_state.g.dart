// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsState _$_$_SettingsStateFromJson(Map<String, dynamic> json) {
  return _$_SettingsState(
    focusInMinutes: json['focusInMinutes'] as int ?? 25,
    shortBreakInMinutes: json['shortBreakInMinutes'] as int ?? 5,
    longBreakInMinutes: json['longBreakInMinutes'] as int ?? 15,
    roundsLength: json['roundsLength'] as int ?? 4,
    pomodoroThemeName: json['pomodoroThemeName'] as String ?? 'Pomotroid',
    autoStartWorkTimer: json['autoStartWorkTimer'] as bool ?? true,
    autoStartBreakTimer: json['autoStartBreakTimer'] as bool ?? true,
    desktopNotifications: json['desktopNotifications'] as bool ?? true,
    desktopNotificationsSound:
        json['desktopNotificationsSound'] as bool ?? true,
  );
}

Map<String, dynamic> _$_$_SettingsStateToJson(_$_SettingsState instance) =>
    <String, dynamic>{
      'focusInMinutes': instance.focusInMinutes,
      'shortBreakInMinutes': instance.shortBreakInMinutes,
      'longBreakInMinutes': instance.longBreakInMinutes,
      'roundsLength': instance.roundsLength,
      'pomodoroThemeName': instance.pomodoroThemeName,
      'autoStartWorkTimer': instance.autoStartWorkTimer,
      'autoStartBreakTimer': instance.autoStartBreakTimer,
      'desktopNotifications': instance.desktopNotifications,
      'desktopNotificationsSound': instance.desktopNotificationsSound,
    };
