import 'package:hooks_riverpod/all.dart';

import '../../../_internal/cache/hydrated_state_notifier.dart';
import '../../../_internal/extensions/time_extensions.dart';
import '../../../models/activity.dart';
import '../../refs.dart';

class ActivityManager extends HydratedStateNotifier<List<Activity>> {
  ActivityManager(this._read) : super([]);

  final Reader _read;

  static const _kJsonKey = 'Activities';

  DateTime get _now => DateTime.now().date;

  void save() {
    final project = _read(selectedProjectProvider);

    final activity = state.today.firstWhere(
      (e) => e.project == project,
      orElse: () => Activity(date: _now, project: project),
    );

    final update = activity.copyWith(duration: activity.duration + 1);
    state = state.update(activity, update);
  }

  @override
  List<Activity> fromJson(Map<String, Object> json) {
    return json[_kJsonKey] != null
        ? (json[_kJsonKey] as List<Object>)
            .map((e) => Activity.fromJson(e as Map<String, Object>))
            .toList()
        : <Activity>[];
  }

  @override
  Map<String, Object> toJson(List<Activity> state) {
    return {_kJsonKey: state.map((e) => e.toJson()).toList()};
  }
}

/// Extension to manipulate list of [Activity]
extension ActivityExtension on List<Activity> {
  List<Activity> get today {
    return where((activity) => activity.date.isToday).toList();
  }

  List<Activity> get lastSevenDays {
    return where((activity) {
      final diff = activity.calculateDifferenceInDays();
      return diff >= -7 && diff < 1;
    }).toList();
  }

  List<Activity> update(Activity oldValue, Activity newValue) {
    removeWhere((activity) => activity == oldValue);
    insert(length, newValue);

    return this;
  }
}
