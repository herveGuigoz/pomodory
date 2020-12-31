import 'package:hooks_riverpod/all.dart';

import '../../../core/cache/hydrated_state_notifier.dart';
import '../../../core/extensions/date_time.dart';
import '../../timer/domain/entities/round.dart';
import '../models/stats.dart';

final statsProvider = StateNotifierProvider((ref) => StatsController());

class StatsController extends HydratedStateNotifier<List<Stats>> {
  StatsController({List<Stats> state}) : super(state ?? []);

  static const _kJsonKey = 'stats';

  /// Save result to cache
  /// @round finished round
  /// @duration total duration for this round in minutes
  void save(Round round) {
    final list = state ?? [];
    final now = DateTime.now();

    final result = list.firstWhere(
      (e) => e.date.isSameDay(now),
      orElse: () => Stats(date: now),
    );

    list.removeWhere((element) => element.date.isSameDay(now));

    final update = result.update(round);

    state = [...list, update];
  }

  bool containsThisDate(DateTime date) {
    final value = state.firstWhere(
      (element) => element.date.isSameDay(date),
      orElse: () => null,
    );

    return value != null;
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
    final json = <String, Object>{
      _kJsonKey: state.map((e) => e.toJson())?.toList(),
    };
    return json;
  }
}
