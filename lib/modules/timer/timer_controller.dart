import 'dart:async';
import 'dart:io';

import 'package:pomodory/models/round.dart';
import 'package:pomodory/models/settings_state.dart';
import 'package:pomodory/models/timer_state.dart';
import 'package:pomodory/modules/activity/logic/activity_manager.dart';
import 'package:pomodory/services/files_service.dart';
import 'package:pomodory/services/notifications_service.dart';
import 'package:state_notifier/state_notifier.dart';

part 'notifications.dart';
part 'ticker.dart';
part 'timer.dart';

class TimerController extends StateNotifier<TimerState>
    with Timer, NotificationMixin {
  TimerController(
    this.settings,
    this.activityManager,
  ) : super(settings.initialTimerState);

  final SettingsState settings;
  final ActivityManager activityManager;

  /// Switch to either work, shortBreak or longBreak,
  void setNextRound({Round? next, bool mustStartTimer = false}) {
    final nextRound = next ??
        state.currentRound.maybeWhen(
          work: () => state.round < settings.roundsLength
              ? const Round.shortBreak()
              : const Round.longBreak(),
          orElse: () => const Round.work(),
        );

    state = state.copyWith(
      duration: nextRound!.getRoundDuration(settings),
      tick: nextRound.getRoundDuration(settings).inSeconds,
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
  void onTickUpdate(int tick) {
    if (state.currentRound is Work) activityManager.save();

    state = state.copyWith(tick: tick);
  }

  /// Called when timer ended.
  /// Follow user preferences to start next timer and show notification.
  @override
  Future<void> onDone() async {
    setNextRound(mustStartTimer: state.currentRound.autoStartNext(settings));
    if (settings.notifications) {
      await showNotification(playSound: settings.sound);
    }
  }

  /// Reset current period.
  /// Reset iteration only if counter hasnt decreased.
  void reset() {
    final isFreshRound = state.duration.inSeconds == state.tick;
    resetTimer();
    if (isFreshRound) state = settings.initialTimerState;
  }

  @override
  void dispose() {
    closeTimer();
    super.dispose();
  }
}
