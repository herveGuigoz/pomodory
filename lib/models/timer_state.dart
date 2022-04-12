import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pomodory/_internal/extensions/time_extensions.dart';
import 'package:pomodory/models/round.dart';
import 'package:pomodory/models/settings_state.dart';

part 'timer_state.freezed.dart';

@freezed
class TimerState with _$TimerState {
  factory TimerState({
    required Duration duration,
    required int tick,
    required bool isPlaying,
    @Default(1) int round,
    @Default(Round.work()) Round currentRound,
  }) = _TimerState;

  const TimerState._();

  /// Returns the **Current Time** of Countdown Timer
  String get time => Duration(seconds: tick).time;

  /// Returns the fractional value (between 0 to 1) of Countdown Timer
  double get fractionalValue => tick / (duration.inSeconds / 100) / 100;
}

/// Helper to build initial state.
extension TimerStateExt on SettingsState {
  /// Initial state will be work round with user's preferences durations.
  TimerState get initialTimerState {
    const round = Round.work();
    final duration = round.getRoundDuration(this);
    return TimerState(
      round: 0,
      currentRound: round,
      duration: duration,
      tick: duration.inSeconds,
      isPlaying: false,
    );
  }
}
