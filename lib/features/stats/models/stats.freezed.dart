// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StatsTearOff {
  const _$StatsTearOff();

// ignore: unused_element
  _Stats call(
      {@required DateTime date,
      int totalFocusedRoundInSeconds = 0,
      int totalShortBreaksInSeconds = 0,
      int totalLongBreaksInSeconds = 0}) {
    return _Stats(
      date: date,
      totalFocusedRoundInSeconds: totalFocusedRoundInSeconds,
      totalShortBreaksInSeconds: totalShortBreaksInSeconds,
      totalLongBreaksInSeconds: totalLongBreaksInSeconds,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Stats = _$StatsTearOff();

/// @nodoc
mixin _$Stats {
  DateTime get date;
  int get totalFocusedRoundInSeconds;
  int get totalShortBreaksInSeconds;
  int get totalLongBreaksInSeconds;

  $StatsCopyWith<Stats> get copyWith;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      int totalFocusedRoundInSeconds,
      int totalShortBreaksInSeconds,
      int totalLongBreaksInSeconds});
}

/// @nodoc
class _$StatsCopyWithImpl<$Res> implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._value, this._then);

  final Stats _value;
  // ignore: unused_field
  final $Res Function(Stats) _then;

  @override
  $Res call({
    Object date = freezed,
    Object totalFocusedRoundInSeconds = freezed,
    Object totalShortBreaksInSeconds = freezed,
    Object totalLongBreaksInSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      totalFocusedRoundInSeconds: totalFocusedRoundInSeconds == freezed
          ? _value.totalFocusedRoundInSeconds
          : totalFocusedRoundInSeconds as int,
      totalShortBreaksInSeconds: totalShortBreaksInSeconds == freezed
          ? _value.totalShortBreaksInSeconds
          : totalShortBreaksInSeconds as int,
      totalLongBreaksInSeconds: totalLongBreaksInSeconds == freezed
          ? _value.totalLongBreaksInSeconds
          : totalLongBreaksInSeconds as int,
    ));
  }
}

/// @nodoc
abstract class _$StatsCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$StatsCopyWith(_Stats value, $Res Function(_Stats) then) =
      __$StatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      int totalFocusedRoundInSeconds,
      int totalShortBreaksInSeconds,
      int totalLongBreaksInSeconds});
}

/// @nodoc
class __$StatsCopyWithImpl<$Res> extends _$StatsCopyWithImpl<$Res>
    implements _$StatsCopyWith<$Res> {
  __$StatsCopyWithImpl(_Stats _value, $Res Function(_Stats) _then)
      : super(_value, (v) => _then(v as _Stats));

  @override
  _Stats get _value => super._value as _Stats;

  @override
  $Res call({
    Object date = freezed,
    Object totalFocusedRoundInSeconds = freezed,
    Object totalShortBreaksInSeconds = freezed,
    Object totalLongBreaksInSeconds = freezed,
  }) {
    return _then(_Stats(
      date: date == freezed ? _value.date : date as DateTime,
      totalFocusedRoundInSeconds: totalFocusedRoundInSeconds == freezed
          ? _value.totalFocusedRoundInSeconds
          : totalFocusedRoundInSeconds as int,
      totalShortBreaksInSeconds: totalShortBreaksInSeconds == freezed
          ? _value.totalShortBreaksInSeconds
          : totalShortBreaksInSeconds as int,
      totalLongBreaksInSeconds: totalLongBreaksInSeconds == freezed
          ? _value.totalLongBreaksInSeconds
          : totalLongBreaksInSeconds as int,
    ));
  }
}

/// @nodoc
class _$_Stats extends _Stats with DiagnosticableTreeMixin {
  _$_Stats(
      {@required this.date,
      this.totalFocusedRoundInSeconds = 0,
      this.totalShortBreaksInSeconds = 0,
      this.totalLongBreaksInSeconds = 0})
      : assert(date != null),
        assert(totalFocusedRoundInSeconds != null),
        assert(totalShortBreaksInSeconds != null),
        assert(totalLongBreaksInSeconds != null),
        super._();

  @override
  final DateTime date;
  @JsonKey(defaultValue: 0)
  @override
  final int totalFocusedRoundInSeconds;
  @JsonKey(defaultValue: 0)
  @override
  final int totalShortBreaksInSeconds;
  @JsonKey(defaultValue: 0)
  @override
  final int totalLongBreaksInSeconds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Stats(date: $date, totalFocusedRoundInSeconds: $totalFocusedRoundInSeconds, totalShortBreaksInSeconds: $totalShortBreaksInSeconds, totalLongBreaksInSeconds: $totalLongBreaksInSeconds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Stats'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty(
          'totalFocusedRoundInSeconds', totalFocusedRoundInSeconds))
      ..add(DiagnosticsProperty(
          'totalShortBreaksInSeconds', totalShortBreaksInSeconds))
      ..add(DiagnosticsProperty(
          'totalLongBreaksInSeconds', totalLongBreaksInSeconds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Stats &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.totalFocusedRoundInSeconds,
                    totalFocusedRoundInSeconds) ||
                const DeepCollectionEquality().equals(
                    other.totalFocusedRoundInSeconds,
                    totalFocusedRoundInSeconds)) &&
            (identical(other.totalShortBreaksInSeconds,
                    totalShortBreaksInSeconds) ||
                const DeepCollectionEquality().equals(
                    other.totalShortBreaksInSeconds,
                    totalShortBreaksInSeconds)) &&
            (identical(
                    other.totalLongBreaksInSeconds, totalLongBreaksInSeconds) ||
                const DeepCollectionEquality().equals(
                    other.totalLongBreaksInSeconds, totalLongBreaksInSeconds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(totalFocusedRoundInSeconds) ^
      const DeepCollectionEquality().hash(totalShortBreaksInSeconds) ^
      const DeepCollectionEquality().hash(totalLongBreaksInSeconds);

  @override
  _$StatsCopyWith<_Stats> get copyWith =>
      __$StatsCopyWithImpl<_Stats>(this, _$identity);
}

abstract class _Stats extends Stats {
  _Stats._() : super._();
  factory _Stats(
      {@required DateTime date,
      int totalFocusedRoundInSeconds,
      int totalShortBreaksInSeconds,
      int totalLongBreaksInSeconds}) = _$_Stats;

  @override
  DateTime get date;
  @override
  int get totalFocusedRoundInSeconds;
  @override
  int get totalShortBreaksInSeconds;
  @override
  int get totalLongBreaksInSeconds;
  @override
  _$StatsCopyWith<_Stats> get copyWith;
}
