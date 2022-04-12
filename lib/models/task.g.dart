// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      id: json['id'] as String,
      name: json['name'] as String,
      estPomodoros: json['estPomodoros'] as int,
      selected: json['selected'] as bool? ?? false,
      visible: json['visible'] as bool? ?? false,
      completed: json['completed'] as bool? ?? false,
      project: json['project'] as String? ?? kDefaultProject,
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'estPomodoros': instance.estPomodoros,
      'selected': instance.selected,
      'visible': instance.visible,
      'completed': instance.completed,
      'project': instance.project,
    };
