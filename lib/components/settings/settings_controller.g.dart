// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$_$_SettingsFromJson(Map<String, dynamic> json) {
  return _$_Settings(
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

Map<String, dynamic> _$_$_SettingsToJson(_$_Settings instance) =>
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
