// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
class _$TaskTearOff {
  const _$TaskTearOff();

  _Task call(
      {required String id,
      required String name,
      required int estPomodoros,
      bool selected = false,
      bool visible = false,
      bool completed = false,
      String project = kDefaultProject}) {
    return _Task(
      id: id,
      name: name,
      estPomodoros: estPomodoros,
      selected: selected,
      visible: visible,
      completed: completed,
      project: project,
    );
  }

  Task fromJson(Map<String, Object?> json) {
    return Task.fromJson(json);
  }
}

/// @nodoc
const $Task = _$TaskTearOff();

/// @nodoc
mixin _$Task {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get estPomodoros => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  String get project => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      int estPomodoros,
      bool selected,
      bool visible,
      bool completed,
      String project});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? estPomodoros = freezed,
    Object? selected = freezed,
    Object? visible = freezed,
    Object? completed = freezed,
    Object? project = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      estPomodoros: estPomodoros == freezed
          ? _value.estPomodoros
          : estPomodoros // ignore: cast_nullable_to_non_nullable
              as int,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      visible: visible == freezed
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) then) =
      __$TaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      int estPomodoros,
      bool selected,
      bool visible,
      bool completed,
      String project});
}

/// @nodoc
class __$TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(_Task _value, $Res Function(_Task) _then)
      : super(_value, (v) => _then(v as _Task));

  @override
  _Task get _value => super._value as _Task;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? estPomodoros = freezed,
    Object? selected = freezed,
    Object? visible = freezed,
    Object? completed = freezed,
    Object? project = freezed,
  }) {
    return _then(_Task(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      estPomodoros: estPomodoros == freezed
          ? _value.estPomodoros
          : estPomodoros // ignore: cast_nullable_to_non_nullable
              as int,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      visible: visible == freezed
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Task extends _Task with DiagnosticableTreeMixin {
  const _$_Task(
      {required this.id,
      required this.name,
      required this.estPomodoros,
      this.selected = false,
      this.visible = false,
      this.completed = false,
      this.project = kDefaultProject})
      : super._();

  factory _$_Task.fromJson(Map<String, dynamic> json) => _$$_TaskFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int estPomodoros;
  @JsonKey()
  @override
  final bool selected;
  @JsonKey()
  @override
  final bool visible;
  @JsonKey()
  @override
  final bool completed;
  @JsonKey()
  @override
  final String project;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Task(id: $id, name: $name, estPomodoros: $estPomodoros, selected: $selected, visible: $visible, completed: $completed, project: $project)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Task'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('estPomodoros', estPomodoros))
      ..add(DiagnosticsProperty('selected', selected))
      ..add(DiagnosticsProperty('visible', visible))
      ..add(DiagnosticsProperty('completed', completed))
      ..add(DiagnosticsProperty('project', project));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Task &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.estPomodoros, estPomodoros) &&
            const DeepCollectionEquality().equals(other.selected, selected) &&
            const DeepCollectionEquality().equals(other.visible, visible) &&
            const DeepCollectionEquality().equals(other.completed, completed) &&
            const DeepCollectionEquality().equals(other.project, project));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(estPomodoros),
      const DeepCollectionEquality().hash(selected),
      const DeepCollectionEquality().hash(visible),
      const DeepCollectionEquality().hash(completed),
      const DeepCollectionEquality().hash(project));

  @JsonKey(ignore: true)
  @override
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskToJson(this);
  }
}

abstract class _Task extends Task {
  const factory _Task(
      {required String id,
      required String name,
      required int estPomodoros,
      bool selected,
      bool visible,
      bool completed,
      String project}) = _$_Task;
  const _Task._() : super._();

  factory _Task.fromJson(Map<String, dynamic> json) = _$_Task.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get estPomodoros;
  @override
  bool get selected;
  @override
  bool get visible;
  @override
  bool get completed;
  @override
  String get project;
  @override
  @JsonKey(ignore: true)
  _$TaskCopyWith<_Task> get copyWith => throw _privateConstructorUsedError;
}
