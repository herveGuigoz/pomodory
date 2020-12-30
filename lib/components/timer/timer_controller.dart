import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';

import '../../core/extensions/duration.dart';
import '../settings/controllers/intervals.dart';
import 'notification.dart';
import 'ticker.dart';

part 'timer_controller.freezed.dart';

class TimerController extends TickerService with TimerNotification {
  TimerController(this.settings) : super(settings.initialTimerState);

  final IntervalsSettings settings;

  void setNextRound({bool mustStartTimer = false}) {
    final nextRound = state.currentRound.maybeWhen(
      work: () => state.round < settings.roundsLength
          ? const Round.shortBreak()
          : const Round.longBreak(),
      orElse: () => const Round.work(),
    );

    state = state.copyWith(
      duration: nextRound.getRoundDuration(settings),
      value: nextRound.getRoundDuration(settings).inSeconds,
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

  /// Reset current period.
  /// Reset iteration only if counter has decreased.
  void reset() {
    final isRoundOnStart = state.duration.inSeconds == state.value;
    resetTimer();
    if (isRoundOnStart) state = settings.initialTimerState;
  }

  @override
  Future<void> onDone() async {
    setNextRound(mustStartTimer: state.currentRound is! LongBreak);
    await showNotification();
  }
}

@freezed
abstract class TimerState implements _$TimerState {
  const TimerState._();

  factory TimerState({
    @required Duration duration,
    // todo rename to tick
    @required int value,
    @required bool isPlaying,
    @Default(1) int round,
    @Default(Round.work()) Round currentRound,
  }) = _TimerState;

  /// This Method returns the **Current Time** of Countdown Timer
  String get time => Duration(seconds: value).time;
  double get fractionalValue => value / (duration.inSeconds / 100) / 100;
}

extension TimerStateExt on IntervalsSettings {
  TimerState get initialTimerState {
    const round = Round.work();
    final duration = round.getRoundDuration(this);
    return TimerState(
      round: 0,
      currentRound: round,
      duration: duration,
      value: duration.inSeconds,
      isPlaying: false,
    );
  }
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
