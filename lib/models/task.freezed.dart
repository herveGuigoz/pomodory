// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TaskTearOff {
  const _$TaskTearOff();

// ignore: unused_element
  _Task call(
      {@required String id,
      @required String name,
      @required int estPomodoros,
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
}

/// @nodoc
// ignore: unused_element
const $Task = _$TaskTearOff();

/// @nodoc
mixin _$Task {
  String get id;
  String get name;
  int get estPomodoros;
  bool get selected;
  bool get visible;
  bool get completed;
  String get project;

  $TaskCopyWith<Task> get copyWith;
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
    Object id = freezed,
    Object name = freezed,
    Object estPomodoros = freezed,
    Object selected = freezed,
    Object visible = freezed,
    Object completed = freezed,
    Object project = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      estPomodoros:
          estPomodoros == freezed ? _value.estPomodoros : estPomodoros as int,
      selected: selected == freezed ? _value.selected : selected as bool,
      visible: visible == freezed ? _value.visible : visible as bool,
      completed: completed == freezed ? _value.completed : completed as bool,
      project: project == freezed ? _value.project : project as String,
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
    Object id = freezed,
    Object name = freezed,
    Object estPomodoros = freezed,
    Object selected = freezed,
    Object visible = freezed,
    Object completed = freezed,
    Object project = freezed,
  }) {
    return _then(_Task(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      estPomodoros:
          estPomodoros == freezed ? _value.estPomodoros : estPomodoros as int,
      selected: selected == freezed ? _value.selected : selected as bool,
      visible: visible == freezed ? _value.visible : visible as bool,
      completed: completed == freezed ? _value.completed : completed as bool,
      project: project == freezed ? _value.project : project as String,
    ));
  }
}

/// @nodoc
class _$_Task extends _Task with DiagnosticableTreeMixin {
  const _$_Task(
      {@required this.id,
      @required this.name,
      @required this.estPomodoros,
      this.selected = false,
      this.visible = false,
      this.completed = false,
      this.project = kDefaultProject})
      : assert(id != null),
        assert(name != null),
        assert(estPomodoros != null),
        assert(selected != null),
        assert(visible != null),
        assert(completed != null),
        assert(project != null),
        super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final int estPomodoros;
  @JsonKey(defaultValue: false)
  @override
  final bool selected;
  @JsonKey(defaultValue: false)
  @override
  final bool visible;
  @JsonKey(defaultValue: false)
  @override
  final bool completed;
  @JsonKey(defaultValue: kDefaultProject)
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
        (other is _Task &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.estPomodoros, estPomodoros) ||
                const DeepCollectionEquality()
                    .equals(other.estPomodoros, estPomodoros)) &&
            (identical(other.selected, selected) ||
                const DeepCollectionEquality()
                    .equals(other.selected, selected)) &&
            (identical(other.visible, visible) ||
                const DeepCollectionEquality()
                    .equals(other.visible, visible)) &&
            (identical(other.completed, completed) ||
                const DeepCollectionEquality()
                    .equals(other.completed, completed)) &&
            (identical(other.project, project) ||
                const DeepCollectionEquality().equals(other.project, project)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(estPomodoros) ^
      const DeepCollectionEquality().hash(selected) ^
      const DeepCollectionEquality().hash(visible) ^
      const DeepCollectionEquality().hash(completed) ^
      const DeepCollectionEquality().hash(project);

  @override
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);
}

abstract class _Task extends Task {
  const _Task._() : super._();
  const factory _Task(
      {@required String id,
      @required String name,
      @required int estPomodoros,
      bool selected,
      bool visible,
      bool completed,
      String project}) = _$_Task;

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
  _$TaskCopyWith<_Task> get copyWith;
}
