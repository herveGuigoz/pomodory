// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TimerStateTearOff {
  const _$TimerStateTearOff();

// ignore: unused_element
  _TimerState call(
      {@required Duration duration,
      @required int tick,
      @required bool isPlaying,
      int round = 1,
      Round currentRound = const Round.work(),
      @nullable List<Results> resultList}) {
    return _TimerState(
      duration: duration,
      tick: tick,
      isPlaying: isPlaying,
      round: round,
      currentRound: currentRound,
      resultList: resultList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TimerState = _$TimerStateTearOff();

/// @nodoc
mixin _$TimerState {
  Duration get duration;
  int get tick;
  bool get isPlaying;
  int get round;
  Round get currentRound;
  @nullable
  List<Results> get resultList;

  $TimerStateCopyWith<TimerState> get copyWith;
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
      Round currentRound,
      @nullable List<Results> resultList});

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
    Object duration = freezed,
    Object tick = freezed,
    Object isPlaying = freezed,
    Object round = freezed,
    Object currentRound = freezed,
    Object resultList = freezed,
  }) {
    return _then(_value.copyWith(
      duration: duration == freezed ? _value.duration : duration as Duration,
      tick: tick == freezed ? _value.tick : tick as int,
      isPlaying: isPlaying == freezed ? _value.isPlaying : isPlaying as bool,
      round: round == freezed ? _value.round : round as int,
      currentRound:
          currentRound == freezed ? _value.currentRound : currentRound as Round,
      resultList: resultList == freezed
          ? _value.resultList
          : resultList as List<Results>,
    ));
  }

  @override
  $RoundCopyWith<$Res> get currentRound {
    if (_value.currentRound == null) {
      return null;
    }
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
      Round currentRound,
      @nullable List<Results> resultList});

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
    Object duration = freezed,
    Object tick = freezed,
    Object isPlaying = freezed,
    Object round = freezed,
    Object currentRound = freezed,
    Object resultList = freezed,
  }) {
    return _then(_TimerState(
      duration: duration == freezed ? _value.duration : duration as Duration,
      tick: tick == freezed ? _value.tick : tick as int,
      isPlaying: isPlaying == freezed ? _value.isPlaying : isPlaying as bool,
      round: round == freezed ? _value.round : round as int,
      currentRound:
          currentRound == freezed ? _value.currentRound : currentRound as Round,
      resultList: resultList == freezed
          ? _value.resultList
          : resultList as List<Results>,
    ));
  }
}

/// @nodoc
class _$_TimerState extends _TimerState with DiagnosticableTreeMixin {
  _$_TimerState(
      {@required this.duration,
      @required this.tick,
      @required this.isPlaying,
      this.round = 1,
      this.currentRound = const Round.work(),
      @nullable this.resultList})
      : assert(duration != null),
        assert(tick != null),
        assert(isPlaying != null),
        assert(round != null),
        assert(currentRound != null),
        super._();

  @override
  final Duration duration;
  @override
  final int tick;
  @override
  final bool isPlaying;
  @JsonKey(defaultValue: 1)
  @override
  final int round;
  @JsonKey(defaultValue: const Round.work())
  @override
  final Round currentRound;
  @override
  @nullable
  final List<Results> resultList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerState(duration: $duration, tick: $tick, isPlaying: $isPlaying, round: $round, currentRound: $currentRound, resultList: $resultList)';
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
      ..add(DiagnosticsProperty('currentRound', currentRound))
      ..add(DiagnosticsProperty('resultList', resultList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimerState &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.tick, tick) ||
                const DeepCollectionEquality().equals(other.tick, tick)) &&
            (identical(other.isPlaying, isPlaying) ||
                const DeepCollectionEquality()
                    .equals(other.isPlaying, isPlaying)) &&
            (identical(other.round, round) ||
                const DeepCollectionEquality().equals(other.round, round)) &&
            (identical(other.currentRound, currentRound) ||
                const DeepCollectionEquality()
                    .equals(other.currentRound, currentRound)) &&
            (identical(other.resultList, resultList) ||
                const DeepCollectionEquality()
                    .equals(other.resultList, resultList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(tick) ^
      const DeepCollectionEquality().hash(isPlaying) ^
      const DeepCollectionEquality().hash(round) ^
      const DeepCollectionEquality().hash(currentRound) ^
      const DeepCollectionEquality().hash(resultList);

  @override
  _$TimerStateCopyWith<_TimerState> get copyWith =>
      __$TimerStateCopyWithImpl<_TimerState>(this, _$identity);
}

abstract class _TimerState extends TimerState {
  _TimerState._() : super._();
  factory _TimerState(
      {@required Duration duration,
      @required int tick,
      @required bool isPlaying,
      int round,
      Round currentRound,
      @nullable List<Results> resultList}) = _$_TimerState;

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
  @nullable
  List<Results> get resultList;
  @override
  _$TimerStateCopyWith<_TimerState> get copyWith;
}
