import 'package:state_notifier/state_notifier.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_controller.freezed.dart';
part 'timer_controller.g.dart';

class TimerController extends StateNotifier<TimerState> {
  TimerController(Duration duration)
      : super(TimerState(
          duration: duration,
          isPlaying: false,
          value: duration.inMilliseconds,
        ));

  /// This Method Pauses the Countdown Timer
  void pause() {
    if (!state.isPlaying) return;
    state = state.copyWith(isPlaying: false);
  }

  /// This Method Restarts the Countdown Timer,
  /// **duration**  parameter is the updated duration for countdown timer
  void restart(Duration duration) {
    state = state.copyWith(
      isPlaying: true,
      duration: duration,
      value: duration.inMilliseconds,
    );
  }
}

@freezed
abstract class TimerState implements _$TimerState {
  const TimerState._();

  factory TimerState({
    @required Duration duration,
    @required int value,
    @required bool isPlaying,
  }) = _TimerState;

  factory TimerState.fromJson(Map<String, dynamic> json) =>
      _$TimerStateFromJson(json);

  /// This Method returns the **Current Time** of Countdown Timer
  String get time => (duration * value).time;
}

extension DurationToTimeExt on Duration {
  String get time => inHours != 0
      ? '$inHours:${inMinutes % 60}:${(inSeconds % 60).toString().padLeft(2, '0')}'
      : '${inMinutes % 60}:${(inSeconds % 60).toString().padLeft(2, '0')}';
}
