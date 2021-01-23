import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../models/round.dart';

part 'stats.freezed.dart';

@freezed
abstract class Stats implements _$Stats {
  const Stats._();

  factory Stats({
    @required DateTime date,
    @Default(0) int totalFocusedRoundInSeconds,
    @Default(0) int totalShortBreaksInSeconds,
    @Default(0) int totalLongBreaksInSeconds,
  }) = _Stats;

  Stats update(Round round) {
    return round.when(
      work: () => copyWith(
        totalFocusedRoundInSeconds: totalFocusedRoundInSeconds + 1,
      ),
      shortBreak: () => copyWith(
        totalShortBreaksInSeconds: totalShortBreaksInSeconds + 1,
      ),
      longBreak: () => copyWith(
        totalLongBreaksInSeconds: totalLongBreaksInSeconds + 1,
      ),
    );
  }

  // ignore: prefer_constructors_over_static_methods
  static Stats fromJson(Map<String, Object> json) {
    return Stats(
      date: DateTime.parse(_JsonParser.byKey<String>(json, 'date')),
      totalFocusedRoundInSeconds: _JsonParser.byKey<int>(
        json,
        'totalFocusedRoundInMinutes',
        orElse: 0,
      ),
      totalShortBreaksInSeconds: _JsonParser.byKey<int>(
        json,
        'totalShortBreaksInMinutes',
        orElse: 0,
      ),
      totalLongBreaksInSeconds: _JsonParser.byKey<int>(
        json,
        'totalLongBreaksInMinutes',
        orElse: 0,
      ),
    );
  }

  Map<String, Object> toJson() {
    return {
      'date': date.toIso8601String(),
      'totalFocusedRoundInMinutes': totalFocusedRoundInSeconds,
      'totalShortBreaksInMinutes': totalShortBreaksInSeconds,
      'totalLongBreaksInMinutes': totalLongBreaksInSeconds,
    };
  }
}

class _JsonParser {
  static T byKey<T>(Map<String, Object> json, String key, {T orElse}) {
    return json[key] != null ? json[key] as T : orElse;
  }
}
