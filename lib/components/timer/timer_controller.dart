import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';

import '../../core/extensions/duration.dart';
import '../settings/controllers/intervals.dart';
import 'ticker.dart';

part 'timer_controller.freezed.dart';

class TimerController extends TickerService {
  TimerController(this._settings) : super(getInitialState(_settings));

  final IntervalsSettings _settings;

  static TimerState getInitialState(IntervalsSettings settings) {
    const round = Round.work();
    final duration = round.getRoundDuration(settings);
    return TimerState(
      round: 0,
      currentRound: round,
      duration: duration,
      value: duration.inSeconds,
      isPlaying: false,
    );
  }

  void setNextRound({bool mustStartTimer = false}) {
    final nextRound = state.currentRound.maybeWhen(
      work: () => state.round < _settings.roundsLength
          ? const Round.shortBreak()
          : const Round.longBreak(),
      orElse: () => const Round.work(),
    );

    state = state.copyWith(
      duration: nextRound.getRoundDuration(_settings),
      value: nextRound.getRoundDuration(_settings).inSeconds,
      currentRound: nextRound,
      round: state.currentRound is LongBreak
          ? 0
          : nextRound is Work
              ? state.round + 1
              : state.round,
    );

    resetTimer();

    if (mustStartTimer) startTimer();
  }

  @override
  void onDone() {
    setNextRound(mustStartTimer: state.currentRound is! LongBreak);
  }
}

@freezed
abstract class TimerState implements _$TimerState {
  const TimerState._();

  factory TimerState({
    @required Duration duration,
    @required int value,
    @required bool isPlaying,
    @Default(1) int round,
    @Default(Round.work()) Round currentRound,
  }) = _TimerState;

  /// This Method returns the **Current Time** of Countdown Timer
  String get time => Duration(seconds: value).time;
  double get fractionalValue => value / (duration.inSeconds / 100) / 100;
}

@freezed
abstract class Round implements _$Round {
  const Round._();

  const factory Round.work() = Work;
  const factory Round.shortBreak() = ShortBreak;
  const factory Round.longBreak() = LongBreak;

  Duration getRoundDuration(IntervalsSettings settings) => when(
        work: () => Duration(seconds: settings.focus),
        shortBreak: () => Duration(seconds: settings.shortBreak),
        longBreak: () => Duration(seconds: settings.longBreak),
        // work: () => Duration(minutes: settings.focus),
        // shortBreak: () => Duration(minutes: settings.shortBreak),
        // longBreak: () => Duration(minutes: settings.longBreak),
      );
}

final timerControllerProvider = StateNotifierProvider<TimerController>((ref) {
  final settings = ref.watch(intervalsProvider.state);
  final controller = TimerController(settings);

  return controller;
});

final timerIsPlayingProvider = Provider.autoDispose<bool>((ref) {
  final state = ref.watch(timerControllerProvider.state);
  return state.isPlaying;
});
