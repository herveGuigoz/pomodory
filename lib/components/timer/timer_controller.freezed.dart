// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'timer_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TimerState _$TimerStateFromJson(Map<String, dynamic> json) {
  return _TimerState.fromJson(json);
}

/// @nodoc
class _$TimerStateTearOff {
  const _$TimerStateTearOff();

// ignore: unused_element
  _TimerState call(
      {@required Duration duration,
      @required int value,
      @required bool isPlaying}) {
    return _TimerState(
      duration: duration,
      value: value,
      isPlaying: isPlaying,
    );
  }

// ignore: unused_element
  TimerState fromJson(Map<String, Object> json) {
    return TimerState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TimerState = _$TimerStateTearOff();

/// @nodoc
mixin _$TimerState {
  Duration get duration;
  int get value;
  bool get isPlaying;

  Map<String, dynamic> toJson();
  $TimerStateCopyWith<TimerState> get copyWith;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res>;
  $Res call({Duration duration, int value, bool isPlaying});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res> implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  final TimerState _value;
  // ignore: unused_field
  final $Res Function(TimerState) _then;

  @override
  $Res call({
    Object duration = freezed,
    Object value = freezed,
    Object isPlaying = freezed,
  }) {
    return _then(_value.copyWith(
      duration: duration == freezed ? _value.duration : duration as Duration,
      value: value == freezed ? _value.value : value as int,
      isPlaying: isPlaying == freezed ? _value.isPlaying : isPlaying as bool,
    ));
  }
}

/// @nodoc
abstract class _$TimerStateCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory _$TimerStateCopyWith(
          _TimerState value, $Res Function(_TimerState) then) =
      __$TimerStateCopyWithImpl<$Res>;
  @override
  $Res call({Duration duration, int value, bool isPlaying});
}

/// @nodoc
class __$TimerStateCopyWithImpl<$Res> extends _$TimerStateCopyWithImpl<$Res>
    implements _$TimerStateCopyWith<$Res> {
  __$TimerStateCopyWithImpl(
      _TimerState _value, $Res Function(_TimerState) _then)
      : super(_value, (v) => _then(v as _TimerState));

  @override
  _TimerState get _value => super._value as _TimerState;

  @override
  $Res call({
    Object duration = freezed,
    Object value = freezed,
    Object isPlaying = freezed,
  }) {
    return _then(_TimerState(
      duration: duration == freezed ? _value.duration : duration as Duration,
      value: value == freezed ? _value.value : value as int,
      isPlaying: isPlaying == freezed ? _value.isPlaying : isPlaying as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TimerState extends _TimerState with DiagnosticableTreeMixin {
  _$_TimerState(
      {@required this.duration, @required this.value, @required this.isPlaying})
      : assert(duration != null),
        assert(value != null),
        assert(isPlaying != null),
        super._();

  factory _$_TimerState.fromJson(Map<String, dynamic> json) =>
      _$_$_TimerStateFromJson(json);

  @override
  final Duration duration;
  @override
  final int value;
  @override
  final bool isPlaying;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerState(duration: $duration, value: $value, isPlaying: $isPlaying)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerState'))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('isPlaying', isPlaying));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimerState &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.isPlaying, isPlaying) ||
                const DeepCollectionEquality()
                    .equals(other.isPlaying, isPlaying)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(isPlaying);

  @override
  _$TimerStateCopyWith<_TimerState> get copyWith =>
      __$TimerStateCopyWithImpl<_TimerState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TimerStateToJson(this);
  }
}

abstract class _TimerState extends TimerState {
  _TimerState._() : super._();
  factory _TimerState(
      {@required Duration duration,
      @required int value,
      @required bool isPlaying}) = _$_TimerState;

  factory _TimerState.fromJson(Map<String, dynamic> json) =
      _$_TimerState.fromJson;

  @override
  Duration get duration;
  @override
  int get value;
  @override
  bool get isPlaying;
  @override
  _$TimerStateCopyWith<_TimerState> get copyWith;
}
