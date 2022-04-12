import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pomodory/models/activity.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String id,
    required String name,
    required int estPomodoros,
    @Default(false) bool selected,
    @Default(false) bool visible,
    @Default(false) bool completed,
    @Default(kDefaultProject) String project,
  }) = _Task;

  const Task._();

  factory Task.initial() {
    return Task(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: '',
      estPomodoros: 1,
      project: kDefaultProject,
    );
  }

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
