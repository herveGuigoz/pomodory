import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pomodory/models/round.dart';

part 'stats.freezed.dart';
part 'stats.g.dart';

@freezed
class Stats with _$Stats {
  factory Stats({
    required DateTime date,
    @Default(0) int totalFocusedRoundInSeconds,
    @Default(0) int totalShortBreaksInSeconds,
    @Default(0) int totalLongBreaksInSeconds,
  }) = _Stats;

  const Stats._();

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);

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
}
