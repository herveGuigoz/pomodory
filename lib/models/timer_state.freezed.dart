// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimerStateTearOff {
  const _$TimerStateTearOff();

  _TimerState call(
      {required Duration duration,
      required int tick,
      required bool isPlaying,
      int round = 1,
      Round currentRound = const Round.work()}) {
    return _TimerState(
      duration: duration,
      tick: tick,
      isPlaying: isPlaying,
      round: round,
      currentRound: currentRound,
    );
  }
}

/// @nodoc
const $TimerState = _$TimerStateTearOff();

/// @nodoc
mixin _$TimerState {
  Duration get duration => throw _privateConstructorUsedError;
  int get tick => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  int get round => throw _privateConstructorUsedError;
  Round get currentRound => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerStateCopyWith<TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res>;
  $Res call(
      {Duration duration,
      int tick,
      bool isPlaying,
      int round,
      Round currentRound});

  $RoundCopyWith<$Res> get currentRound;
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res> implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  final TimerState _value;
  // ignore: unused_field
  final $Res Function(TimerState) _then;

  @override
  $Res call({
    Object? duration = freezed,
    Object? tick = freezed,
    Object? isPlaying = freezed,
    Object? round = freezed,
    Object? currentRound = freezed,
  }) {
    return _then(_value.copyWith(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      tick: tick == freezed
          ? _value.tick
          : tick // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      round: round == freezed
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int,
      currentRound: currentRound == freezed
          ? _value.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as Round,
    ));
  }

  @override
  $RoundCopyWith<$Res> get currentRound {
    return $RoundCopyWith<$Res>(_value.currentRound, (value) {
      return _then(_value.copyWith(currentRound: value));
    });
  }
}

/// @nodoc
abstract class _$TimerStateCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory _$TimerStateCopyWith(
          _TimerState value, $Res Function(_TimerState) then) =
      __$TimerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Duration duration,
      int tick,
      bool isPlaying,
      int round,
      Round currentRound});

  @override
  $RoundCopyWith<$Res> get currentRound;
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
    Object? duration = freezed,
    Object? tick = freezed,
    Object? isPlaying = freezed,
    Object? round = freezed,
    Object? currentRound = freezed,
  }) {
    return _then(_TimerState(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      tick: tick == freezed
          ? _value.tick
          : tick // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      round: round == freezed
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int,
      currentRound: currentRound == freezed
          ? _value.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as Round,
    ));
  }
}

/// @nodoc

class _$_TimerState extends _TimerState with DiagnosticableTreeMixin {
  _$_TimerState(
      {required this.duration,
      required this.tick,
      required this.isPlaying,
      this.round = 1,
      this.currentRound = const Round.work()})
      : super._();

  @override
  final Duration duration;
  @override
  final int tick;
  @override
  final bool isPlaying;
  @JsonKey()
  @override
  final int round;
  @JsonKey()
  @override
  final Round currentRound;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerState(duration: $duration, tick: $tick, isPlaying: $isPlaying, round: $round, currentRound: $currentRound)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerState'))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('tick', tick))
      ..add(DiagnosticsProperty('isPlaying', isPlaying))
      ..add(DiagnosticsProperty('round', round))
      ..add(DiagnosticsProperty('currentRound', currentRound));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimerState &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.tick, tick) &&
            const DeepCollectionEquality().equals(other.isPlaying, isPlaying) &&
            const DeepCollectionEquality().equals(other.round, round) &&
            const DeepCollectionEquality()
                .equals(other.currentRound, currentRound));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(tick),
      const DeepCollectionEquality().hash(isPlaying),
      const DeepCollectionEquality().hash(round),
      const DeepCollectionEquality().hash(currentRound));

  @JsonKey(ignore: true)
  @override
  _$TimerStateCopyWith<_TimerState> get copyWith =>
      __$TimerStateCopyWithImpl<_TimerState>(this, _$identity);
}

abstract class _TimerState extends TimerState {
  factory _TimerState(
      {required Duration duration,
      required int tick,
      required bool isPlaying,
      int round,
      Round currentRound}) = _$_TimerState;
  _TimerState._() : super._();

  @override
  Duration get duration;
  @override
  int get tick;
  @override
  bool get isPlaying;
  @override
  int get round;
  @override
  Round get currentRound;
  @override
  @JsonKey(ignore: true)
  _$TimerStateCopyWith<_TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}
