import 'dart:async';

import 'package:state_notifier/state_notifier.dart';

import '../../../models/timer_state.dart';
import 'ticker.dart';

mixin Timer on StateNotifier<TimerState> {
  /// Stream of ticks
  final Ticker _ticker = Ticker();

  /// Ticks subscription.
  StreamSubscription<int> _subscription;

  /// Translated total round duration in seconds.
  int get _duration => state.duration.inSeconds;

  set _playing(bool value) => state = state.copyWith(isPlaying: value);

  /// Callback to trigger when timer is over.
  void onDone() {}

  // Callback to trigger timer is running;
  void onTickUpdate(int tick) {}

  /// Create new timer.
  void startTimer() {
    _subscription?.cancel();
    _subscription =
        _ticker.tick(ticks: _duration).listen(onTickUpdate, onDone: onDone);
    _playing = true;
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

  void closeTimer() {
    _subscription?.cancel();
  }
}
