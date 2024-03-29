import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomodory/_internal/cache/hydrated_state_notifier.dart';
import 'package:pomodory/_internal/extensions/time_extensions.dart';
import 'package:pomodory/models/round.dart';
import 'package:pomodory/models/stats.dart';



final statsProvider = StateNotifierProvider<StatsController, List<Stats>>(
  (ref) => StatsController(),
);

class StatsController extends HydratedStateNotifier<List<Stats>> {
  StatsController({List<Stats>? state}) : super(state ?? []);

  static const _kJsonKey = 'stats';

  /// Save result to cache
  /// @round finished round
  void save(Round round) {
    final list = state;
    final now = DateTime.now();

    final result = list.firstWhere(
      (e) => e.date.isAtSameDayAs(now),
      orElse: () => Stats(date: now),
    );

    list.removeWhere((element) => element.date.isAtSameDayAs(now));

    final update = result.update(round);

    state = [...list, update];
  }

  bool containsThisDate(DateTime date) {
    return state.any(
      (element) => element.date.isAtSameDayAs(date),
    );
  }

  @override
  List<Stats> fromJson(Map<String, dynamic> json) {
    final stats = json[_kJsonKey] != null
        ? (json[_kJsonKey] as List<Object>)
            .map((e) => Stats.fromJson(e as Map<String, Object>))
            .toList()
        : null;

    return stats ?? [];
  }

  @override
  Map<String, dynamic> toJson(List<Stats> state) {
    final json = <String, dynamic>{
      _kJsonKey: state.map((e) => e.toJson()).toList(),
    };
    return json;
  }
}
