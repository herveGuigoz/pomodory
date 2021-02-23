import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'activity.dart';

part 'task.freezed.dart';

@freezed
abstract class Task implements _$Task {
  const Task._();

  const factory Task({
    @required String id,
    @required String name,
    @required int estPomodoros,
    @Default(false) bool selected,
    @Default(false) bool visible,
    @Default(false) bool completed,
    @Default(kDefaultProject) String project,
  }) = _Task;

  factory Task.fromJson(Map<String, Object> json) {
    return Task(
      id: json['id'] as String,
      name: json['name'] as String,
      estPomodoros: json['estPomodoros'] as int,
      selected: json['selected'] as bool,
      visible: json['visible'] as bool,
      completed: json['completed'] as bool,
      project: json['project'] as String,
    );
  }

  factory Task.initial() {
    return Task(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: '',
      estPomodoros: 1,
      project: kDefaultProject,
    );
  }

  Map<String, Object> toJson() {
    return {
      'id': id,
      'name': name,
      'estPomodoros': estPomodoros,
      'selected': selected,
      'visible': visible,
      'completed': completed,
      'project': project,
    };
  }
}
