import 'dart:async';

import 'package:state_notifier/state_notifier.dart';

import '../bloc/bloc.dart';
import 'ticker.dart';

abstract class Timer extends StateNotifier<TimerState> {
  Timer(
    TimerState state, {
    Ticker ticker,
  })  : _ticker = ticker ?? Ticker(),
        super(state);

  /// Stream of ticks
  final Ticker _ticker;

  /// Ticks subscription.
  StreamSubscription<int> _subscription;

  /// Translated total round duration in seconds.
  int get _duration => state.duration.inSeconds;

  set _playing(bool value) => state = state.copyWith(isPlaying: value);

  /// Callback to trigger when timer is over.
  void onDone() {}

  // Callback to trigger timer is running;
  void onTickUpdate() {}

  /// Create new timer.
  void startTimer() {
    _subscription?.cancel();
    _subscription =
        _ticker.tick(ticks: _duration).listen(_mapTimerToState, onDone: onDone);
    _playing = true;
  }

  /// Update state on every ticks.
  void _mapTimerToState(int timer) {
    onTickUpdate();
    state = state.copyWith(tick: timer);
  }

  void playOrPause() => state.isPlaying ? pause() : play();

  void play() {
    _subscription != null ? _subscription.resume() : startTimer();
    _playing = true;
  }

  void pause() {
    _subscription.pause();
    _playing = false;
  }

  void resetTimer() {
    _subscription?.cancel();
    _subscription = null;
    state = state.copyWith(isPlaying: false, tick: _duration);
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
