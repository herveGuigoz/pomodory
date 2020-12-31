import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'round.dart';

part 'results.freezed.dart';

// TODO rename to stats
@freezed
abstract class Results implements _$Results {
  const Results._();

  factory Results({
    @required DateTime date,
    // TODO we dont need to know how many completed state done
    // only durations.
    @Default(0) int totalFocusedRound,
    @Default(0) int totalShortBreaks,
    @Default(0) int totalLongBreaks,
    @Default(0) int totalFocusedRoundInMinutes,
    @Default(0) int totalShortBreaksInMinutes,
    @Default(0) int totalLongBreaksInMinutes,
  }) = _Results;

  Results update(Round round, int duration) {
    return round.when(
      work: () => copyWith(
        totalFocusedRound: totalFocusedRound + 1,
        totalFocusedRoundInMinutes: totalFocusedRoundInMinutes + duration,
      ),
      shortBreak: () => copyWith(
        totalShortBreaks: totalShortBreaks + 1,
        totalShortBreaksInMinutes: totalShortBreaksInMinutes + duration,
      ),
      longBreak: () => copyWith(
        totalLongBreaks: totalLongBreaks + 1,
        totalLongBreaksInMinutes: totalLongBreaksInMinutes + duration,
      ),
    );
  }

  // ignore: prefer_constructors_over_static_methods
  static Results fromJson(Map<String, Object> json) {
    return Results(
      date: DateTime.parse(_JsonParser.byKey<String>(json, 'date')),
      totalFocusedRound: _JsonParser.byKey<int>(
        json,
        'totalFocusedRound',
        orElse: 0,
      ),
      totalShortBreaks: _JsonParser.byKey<int>(
        json,
        'totalShortBreaks',
        orElse: 0,
      ),
      totalLongBreaks: _JsonParser.byKey<int>(
        json,
        'totalLongBreaks',
        orElse: 0,
      ),
      totalFocusedRoundInMinutes: _JsonParser.byKey<int>(
        json,
        'totalFocusedRoundInMinutes',
        orElse: 0,
      ),
      totalShortBreaksInMinutes: _JsonParser.byKey<int>(
        json,
        'totalShortBreaksInMinutes',
        orElse: 0,
      ),
      totalLongBreaksInMinutes: _JsonParser.byKey<int>(
        json,
        'totalLongBreaksInMinutes',
        orElse: 0,
      ),
    );
  }

  Map<String, Object> toJson() {
    return {
      'date': date.toIso8601String(),
      'totalFocusedRound': totalFocusedRound,
      'totalShortBreaks': totalShortBreaks,
      'totalLongBreaks': totalLongBreaks,
      'totalFocusedRoundInMinutes': totalFocusedRoundInMinutes,
      'totalShortBreaksInMinutes': totalShortBreaksInMinutes,
      'totalLongBreaksInMinutes': totalLongBreaksInMinutes,
    };
  }
}

class _JsonParser {
  static T byKey<T>(Map<String, Object> json, String key, {T orElse}) {
    return json[key] != null ? json[key] as T : orElse;
  }
}
