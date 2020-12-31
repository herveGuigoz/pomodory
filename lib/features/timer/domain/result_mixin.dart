import '../../../core/cache/hydrated_state_notifier.dart';
import '../bloc/bloc.dart';
import 'entities/results.dart';
import 'entities/round.dart';

extension DateExt on DateTime {
  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}

extension IterableResultExt on List<Results> {
  bool containsThisDate(DateTime date) {
    final value = firstWhere(
      (element) => element.date.isSameDay(date),
      orElse: () => null,
    );

    return value != null;
  }
}

mixin ResultsMixin on HydratedStateNotifier<TimerState> {
  /// Save result when round is over
  /// @round finished round
  /// @duration total duration for this round in minutes
  void saveResults() {
    final list = state.resultList ?? [];
    final now = DateTime.now();

    final result = list.firstWhere(
      (e) => e.date.isSameDay(now),
      orElse: () => Results(date: now),
    );

    list.removeWhere((element) => element.date.isSameDay(now));

    // todo state.duration.inMinutes
    final update = result.update(state.currentRound, state.duration.inSeconds);

    state = state.copyWith(resultList: [...list, update]);
  }
}
