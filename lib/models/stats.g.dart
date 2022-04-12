// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Stats _$$_StatsFromJson(Map<String, dynamic> json) => _$_Stats(
      date: DateTime.parse(json['date'] as String),
      totalFocusedRoundInSeconds:
          json['totalFocusedRoundInSeconds'] as int? ?? 0,
      totalShortBreaksInSeconds: json['totalShortBreaksInSeconds'] as int? ?? 0,
      totalLongBreaksInSeconds: json['totalLongBreaksInSeconds'] as int? ?? 0,
    );

Map<String, dynamic> _$$_StatsToJson(_$_Stats instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'totalFocusedRoundInSeconds': instance.totalFocusedRoundInSeconds,
      'totalShortBreaksInSeconds': instance.totalShortBreaksInSeconds,
      'totalLongBreaksInSeconds': instance.totalLongBreaksInSeconds,
    };
