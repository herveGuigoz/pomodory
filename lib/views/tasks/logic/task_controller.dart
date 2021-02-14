import '../../../_internal/cache/hydrated_state_notifier.dart';
import '../../../models/task.dart';

extension _TaskIterableExt on Iterable<Task> {
  List<Task> update(Task task) {
    return map((e) => e.id != task.id ? e : task).toList();
  }

  bool _contains(Task task) {
    return where((e) => e.id == task.id).toList().isNotEmpty;
  }
}

class TaskController extends HydratedStateNotifier<List<Task>> {
  TaskController() : super([]);

  // Add or update given task;
  void update(Task task) {
    state._contains(task)
        ? state = state.update(task)
        : state = [...state, task];
  }

  void delete(Task value) {
    state = state.where((element) => element != value).toList();
  }

  void select(Task task) {
    if (task.completed) return;
    state = state
        .map((element) => element.id == task.id
            ? task.copyWith(selected: !task.selected)
            : element.copyWith(selected: false))
        .toList();
  }

  void complete(Task task) {
    state = state
        .map((element) => element.id == task.id
            ? task.copyWith(completed: !task.completed, selected: false)
            : element)
        .toList();
  }

  @override
  List<Task> fromJson(Map<String, dynamic> json) {
    return (json['tasks'] as List<dynamic>)
        .map((dynamic e) => Task.fromJson(e as Map<String, Object>))
        .toList();
  }

  @override
  Map<String, dynamic> toJson(List<Task> state) {
    return <String, Object>{'tasks': state.map((e) => e.toJson()).toList()};
  }
}
