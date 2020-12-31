part of 'bloc.dart';

// TODO make stats controller
class TimerController extends Timer with NotificationMixin, ResultsMixin {
  TimerController(this.settings) : super(settings.initialTimerState);

  static const _kJsonKey = 'results';

  final SettingsState settings;

  /// Switch to either work, shortBreak or longBreak,
  void setNextRound({bool mustStartTimer = false}) {
    final nextRound = state.currentRound.maybeWhen(
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
    saveResults();
    print(state.resultList);
    setNextRound(mustStartTimer: state.currentRound.autoStartNext(settings));
    if (settings.desktopNotifications) {
      await showNotification(playSound: settings.desktopNotificationsSound);
    }
  }

  @override
  TimerState fromJson(Map<String, Object> json) {
    final results = json[_kJsonKey] != null
        ? (json[_kJsonKey] as List<Object>)
            .map((e) => Results.fromJson(e as Map<String, Object>))
            .toList()
        : null;

    return settings.initialTimerState.copyWith(resultList: results ?? []);
  }

  @override
  Map<String, Object> toJson(TimerState state) {
    // TODO this is calle every tick, save here
    final json = <String, Object>{
      _kJsonKey: state.resultList?.map((e) => e.toJson())?.toList(),
    };
    // print('FROM JSON : $json');
    return json;
  }
}
