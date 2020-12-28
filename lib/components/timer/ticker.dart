import 'dart:async';

import 'package:hooks_riverpod/all.dart';

import 'timer_controller.dart';

typedef OnTimerDone = void Function();

/// Expose a stream of ticks which we can subscribe and react to.
class Ticker {
  Stream<int> tick({int ticks}) {
    return Stream.periodic(
      const Duration(seconds: 1),
      (x) => ticks - x - 1,
    ).take(ticks);
  }
}

abstract class TickerService extends StateNotifier<TimerState> {
  TickerService(TimerState state) : super(state);

  final _ticker = Ticker();
  StreamSubscription<int> _subscription;

  int get _duration => state.duration.inSeconds;

  void onDone() {}

  void startTimer() {
    _subscription?.cancel();
    _subscription =
        _ticker.tick(ticks: _duration).listen(_mapTimerToState, onDone: onDone);
  }

  void _mapTimerToState(int timer) {
    state = state.copyWith(value: timer);
  }

  void playOrPause() => state.isPlaying ? pause() : play();

  void play() {
    _subscription != null ? _subscription.resume() : startTimer();
    state = state.copyWith(isPlaying: true);
  }

  void pause() {
    _subscription.pause();
    state = state.copyWith(isPlaying: false);
  }

  void resetTimer() {
    _subscription?.cancel();
    _subscription = null;
    state = state.copyWith(isPlaying: false, value: _duration);
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
