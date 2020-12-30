// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'timer_controller.dart';

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
      @required int value,
      @required bool isPlaying,
      int round = 1,
      Round currentRound = const Round.work()}) {
    return _TimerState(
      duration: duration,
      value: value,
      isPlaying: isPlaying,
      round: round,
      currentRound: currentRound,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TimerState = _$TimerStateTearOff();

/// @nodoc
mixin _$TimerState {
  Duration get duration; // todo rename to tick
  int get value;
  bool get isPlaying;
  int get round;
  Round get currentRound;

  $TimerStateCopyWith<TimerState> get copyWith;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res>;
  $Res call(
      {Duration duration,
      int value,
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
    Object duration = freezed,
    Object value = freezed,
    Object isPlaying = freezed,
    Object round = freezed,
    Object currentRound = freezed,
  }) {
    return _then(_value.copyWith(
      duration: duration == freezed ? _value.duration : duration as Duration,
      value: value == freezed ? _value.value : value as int,
      isPlaying: isPlaying == freezed ? _value.isPlaying : isPlaying as bool,
      round: round == freezed ? _value.round : round as int,
      currentRound:
          currentRound == freezed ? _value.currentRound : currentRound as Round,
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
      int value,
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
    Object duration = freezed,
    Object value = freezed,
    Object isPlaying = freezed,
    Object round = freezed,
    Object currentRound = freezed,
  }) {
    return _then(_TimerState(
      duration: duration == freezed ? _value.duration : duration as Duration,
      value: value == freezed ? _value.value : value as int,
      isPlaying: isPlaying == freezed ? _value.isPlaying : isPlaying as bool,
      round: round == freezed ? _value.round : round as int,
      currentRound:
          currentRound == freezed ? _value.currentRound : currentRound as Round,
    ));
  }
}

/// @nodoc
class _$_TimerState extends _TimerState with DiagnosticableTreeMixin {
  _$_TimerState(
      {@required this.duration,
      @required this.value,
      @required this.isPlaying,
      this.round = 1,
      this.currentRound = const Round.work()})
      : assert(duration != null),
        assert(value != null),
        assert(isPlaying != null),
        assert(round != null),
        assert(currentRound != null),
        super._();

  @override
  final Duration duration;
  @override // todo rename to tick
  final int value;
  @override
  final bool isPlaying;
  @JsonKey(defaultValue: 1)
  @override
  final int round;
  @JsonKey(defaultValue: const Round.work())
  @override
  final Round currentRound;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerState(duration: $duration, value: $value, isPlaying: $isPlaying, round: $round, currentRound: $currentRound)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerState'))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('isPlaying', isPlaying))
      ..add(DiagnosticsProperty('round', round))
      ..add(DiagnosticsProperty('currentRound', currentRound));
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
                    .equals(other.isPlaying, isPlaying)) &&
            (identical(other.round, round) ||
                const DeepCollectionEquality().equals(other.round, round)) &&
            (identical(other.currentRound, currentRound) ||
                const DeepCollectionEquality()
                    .equals(other.currentRound, currentRound)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(isPlaying) ^
      const DeepCollectionEquality().hash(round) ^
      const DeepCollectionEquality().hash(currentRound);

  @override
  _$TimerStateCopyWith<_TimerState> get copyWith =>
      __$TimerStateCopyWithImpl<_TimerState>(this, _$identity);
}

abstract class _TimerState extends TimerState {
  _TimerState._() : super._();
  factory _TimerState(
      {@required Duration duration,
      @required int value,
      @required bool isPlaying,
      int round,
      Round currentRound}) = _$_TimerState;

  @override
  Duration get duration;
  @override // todo rename to tick
  int get value;
  @override
  bool get isPlaying;
  @override
  int get round;
  @override
  Round get currentRound;
  @override
  _$TimerStateCopyWith<_TimerState> get copyWith;
}

/// @nodoc
class _$RoundTearOff {
  const _$RoundTearOff();

// ignore: unused_element
  Work work() {
    return const Work();
  }

// ignore: unused_element
  ShortBreak shortBreak() {
    return const ShortBreak();
  }

// ignore: unused_element
  LongBreak longBreak() {
    return const LongBreak();
  }
}

/// @nodoc
// ignore: unused_element
const $Round = _$RoundTearOff();

/// @nodoc
mixin _$Round {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult work(),
    @required TResult shortBreak(),
    @required TResult longBreak(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult work(),
    TResult shortBreak(),
    TResult longBreak(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult work(Work value),
    @required TResult shortBreak(ShortBreak value),
    @required TResult longBreak(LongBreak value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult work(Work value),
    TResult shortBreak(ShortBreak value),
    TResult longBreak(LongBreak value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RoundCopyWith<$Res> {
  factory $RoundCopyWith(Round value, $Res Function(Round) then) =
      _$RoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoundCopyWithImpl<$Res> implements $RoundCopyWith<$Res> {
  _$RoundCopyWithImpl(this._value, this._then);

  final Round _value;
  // ignore: unused_field
  final $Res Function(Round) _then;
}

/// @nodoc
abstract class $WorkCopyWith<$Res> {
  factory $WorkCopyWith(Work value, $Res Function(Work) then) =
      _$WorkCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkCopyWithImpl<$Res> extends _$RoundCopyWithImpl<$Res>
    implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(Work _value, $Res Function(Work) _then)
      : super(_value, (v) => _then(v as Work));

  @override
  Work get _value => super._value as Work;
}

/// @nodoc
class _$Work extends Work with DiagnosticableTreeMixin {
  const _$Work() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Round.work()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Round.work'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Work);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult work(),
    @required TResult shortBreak(),
    @required TResult longBreak(),
  }) {
    assert(work != null);
    assert(shortBreak != null);
    assert(longBreak != null);
    return work();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult work(),
    TResult shortBreak(),
    TResult longBreak(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (work != null) {
      return work();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult work(Work value),
    @required TResult shortBreak(ShortBreak value),
    @required TResult longBreak(LongBreak value),
  }) {
    assert(work != null);
    assert(shortBreak != null);
    assert(longBreak != null);
    return work(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult work(Work value),
    TResult shortBreak(ShortBreak value),
    TResult longBreak(LongBreak value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (work != null) {
      return work(this);
    }
    return orElse();
  }
}

abstract class Work extends Round {
  const Work._() : super._();
  const factory Work() = _$Work;
}

/// @nodoc
abstract class $ShortBreakCopyWith<$Res> {
  factory $ShortBreakCopyWith(
          ShortBreak value, $Res Function(ShortBreak) then) =
      _$ShortBreakCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShortBreakCopyWithImpl<$Res> extends _$RoundCopyWithImpl<$Res>
    implements $ShortBreakCopyWith<$Res> {
  _$ShortBreakCopyWithImpl(ShortBreak _value, $Res Function(ShortBreak) _then)
      : super(_value, (v) => _then(v as ShortBreak));

  @override
  ShortBreak get _value => super._value as ShortBreak;
}

/// @nodoc
class _$ShortBreak extends ShortBreak with DiagnosticableTreeMixin {
  const _$ShortBreak() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Round.shortBreak()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Round.shortBreak'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShortBreak);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult work(),
    @required TResult shortBreak(),
    @required TResult longBreak(),
  }) {
    assert(work != null);
    assert(shortBreak != null);
    assert(longBreak != null);
    return shortBreak();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult work(),
    TResult shortBreak(),
    TResult longBreak(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortBreak != null) {
      return shortBreak();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult work(Work value),
    @required TResult shortBreak(ShortBreak value),
    @required TResult longBreak(LongBreak value),
  }) {
    assert(work != null);
    assert(shortBreak != null);
    assert(longBreak != null);
    return shortBreak(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult work(Work value),
    TResult shortBreak(ShortBreak value),
    TResult longBreak(LongBreak value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortBreak != null) {
      return shortBreak(this);
    }
    return orElse();
  }
}

abstract class ShortBreak extends Round {
  const ShortBreak._() : super._();
  const factory ShortBreak() = _$ShortBreak;
}

/// @nodoc
abstract class $LongBreakCopyWith<$Res> {
  factory $LongBreakCopyWith(LongBreak value, $Res Function(LongBreak) then) =
      _$LongBreakCopyWithImpl<$Res>;
}

/// @nodoc
class _$LongBreakCopyWithImpl<$Res> extends _$RoundCopyWithImpl<$Res>
    implements $LongBreakCopyWith<$Res> {
  _$LongBreakCopyWithImpl(LongBreak _value, $Res Function(LongBreak) _then)
      : super(_value, (v) => _then(v as LongBreak));

  @override
  LongBreak get _value => super._value as LongBreak;
}

/// @nodoc
class _$LongBreak extends LongBreak with DiagnosticableTreeMixin {
  const _$LongBreak() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Round.longBreak()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Round.longBreak'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LongBreak);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult work(),
    @required TResult shortBreak(),
    @required TResult longBreak(),
  }) {
    assert(work != null);
    assert(shortBreak != null);
    assert(longBreak != null);
    return longBreak();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult work(),
    TResult shortBreak(),
    TResult longBreak(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (longBreak != null) {
      return longBreak();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult work(Work value),
    @required TResult shortBreak(ShortBreak value),
    @required TResult longBreak(LongBreak value),
  }) {
    assert(work != null);
    assert(shortBreak != null);
    assert(longBreak != null);
    return longBreak(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult work(Work value),
    TResult shortBreak(ShortBreak value),
    TResult longBreak(LongBreak value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (longBreak != null) {
      return longBreak(this);
    }
    return orElse();
  }
}

abstract class LongBreak extends Round {
  const LongBreak._() : super._();
  const factory LongBreak() = _$LongBreak;
}
