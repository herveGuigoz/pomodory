part of 'provider.dart';

class TimerController extends Timer with NotificationMixin {
  TimerController(
    this.settings,
    this.statsController,
  ) : super(settings.initialTimerState);

  final SettingsState settings;
  final StatsController statsController;

  /// Switch to either work, shortBreak or longBreak,
  void setNextRound({Round next, bool mustStartTimer = false}) {
    final nextRound = next ??
        state.currentRound.maybeWhen(
          work: () => state.round < settings.roundsLength
              ? const Round.shortBreak()
              : const Round.longBreak(),
          orElse: () => const Round.work(),
        );

    state = state.copyWith(
      duration: nextRound.getRoundDuration(settings),
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

  /// Reset current period.
  /// Reset iteration only if counter hasnt decreased.
  void reset() {
    final isFreshRound = state.duration.inSeconds == state.tick;
    resetTimer();
    if (isFreshRound) state = settings.initialTimerState;
  }

  /// Called when timer ended.
  /// Follow user preferences to start next timer and show notification.
  @override
  Future<void> onDone() async {
    setNextRound(mustStartTimer: state.currentRound.autoStartNext(settings));
    if (settings.desktopNotifications) {
      await showNotification(playSound: settings.desktopNotificationsSound);
    }
  }

  @override
  void onTickUpdate() {
    statsController.save(state.currentRound);
  }
}
