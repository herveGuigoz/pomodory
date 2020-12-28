// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intervals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IntervalsSettings _$_$_IntervalsSettingsFromJson(Map<String, dynamic> json) {
  return _$_IntervalsSettings(
    currentRound: json['currentRound'] as int ?? 1,
    focus: json['focus'] as int ?? 25,
    shortBreak: json['shortBreak'] as int ?? 5,
    longBreak: json['longBreak'] as int ?? 15,
    roundsLength: json['roundsLength'] as int ?? 4,
  );
}

Map<String, dynamic> _$_$_IntervalsSettingsToJson(
        _$_IntervalsSettings instance) =>
    <String, dynamic>{
      'currentRound': instance.currentRound,
      'focus': instance.focus,
      'shortBreak': instance.shortBreak,
      'longBreak': instance.longBreak,
      'roundsLength': instance.roundsLength,
    };
