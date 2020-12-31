part of 'bloc.dart';

@freezed
abstract class TimerState implements _$TimerState {
  const TimerState._();

  factory TimerState({
    @required Duration duration,
    @required int tick,
    @required bool isPlaying,
    @Default(1) int round,
    @Default(Round.work()) Round currentRound,
    @nullable List<Results> resultList,
  }) = _TimerState;

  /// This Method returns the **Current Time** of Countdown Timer
  String get time => Duration(seconds: tick).time;

  /// This Method returns the fractional value (between 0 to 1) of Countdown Timer
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
