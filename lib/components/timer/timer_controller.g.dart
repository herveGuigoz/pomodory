// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimerState _$_$_TimerStateFromJson(Map<String, dynamic> json) {
  return _$_TimerState(
    duration: json['duration'] == null
        ? null
        : Duration(microseconds: json['duration'] as int),
    value: json['value'] as int,
    isPlaying: json['isPlaying'] as bool,
  );
}

Map<String, dynamic> _$_$_TimerStateToJson(_$_TimerState instance) =>
    <String, dynamic>{
      'duration': instance.duration?.inMicroseconds,
      'value': instance.value,
      'isPlaying': instance.isPlaying,
    };
