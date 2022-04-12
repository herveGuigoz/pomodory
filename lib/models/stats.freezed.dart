// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return _Stats.fromJson(json);
}

/// @nodoc
class _$StatsTearOff {
  const _$StatsTearOff();

  _Stats call(
      {required DateTime date,
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

  Stats fromJson(Map<String, Object?> json) {
    return Stats.fromJson(json);
  }
}

/// @nodoc
const $Stats = _$StatsTearOff();

/// @nodoc
mixin _$Stats {
  DateTime get date => throw _privateConstructorUsedError;
  int get totalFocusedRoundInSeconds => throw _privateConstructorUsedError;
  int get totalShortBreaksInSeconds => throw _privateConstructorUsedError;
  int get totalLongBreaksInSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsCopyWith<Stats> get copyWith => throw _privateConstructorUsedError;
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
    Object? date = freezed,
    Object? totalFocusedRoundInSeconds = freezed,
    Object? totalShortBreaksInSeconds = freezed,
    Object? totalLongBreaksInSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalFocusedRoundInSeconds: totalFocusedRoundInSeconds == freezed
          ? _value.totalFocusedRoundInSeconds
          : totalFocusedRoundInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      totalShortBreaksInSeconds: totalShortBreaksInSeconds == freezed
          ? _value.totalShortBreaksInSeconds
          : totalShortBreaksInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      totalLongBreaksInSeconds: totalLongBreaksInSeconds == freezed
          ? _value.totalLongBreaksInSeconds
          : totalLongBreaksInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
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
    Object? date = freezed,
    Object? totalFocusedRoundInSeconds = freezed,
    Object? totalShortBreaksInSeconds = freezed,
    Object? totalLongBreaksInSeconds = freezed,
  }) {
    return _then(_Stats(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalFocusedRoundInSeconds: totalFocusedRoundInSeconds == freezed
          ? _value.totalFocusedRoundInSeconds
          : totalFocusedRoundInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      totalShortBreaksInSeconds: totalShortBreaksInSeconds == freezed
          ? _value.totalShortBreaksInSeconds
          : totalShortBreaksInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      totalLongBreaksInSeconds: totalLongBreaksInSeconds == freezed
          ? _value.totalLongBreaksInSeconds
          : totalLongBreaksInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stats extends _Stats with DiagnosticableTreeMixin {
  _$_Stats(
      {required this.date,
      this.totalFocusedRoundInSeconds = 0,
      this.totalShortBreaksInSeconds = 0,
      this.totalLongBreaksInSeconds = 0})
      : super._();

  factory _$_Stats.fromJson(Map<String, dynamic> json) =>
      _$$_StatsFromJson(json);

  @override
  final DateTime date;
  @JsonKey()
  @override
  final int totalFocusedRoundInSeconds;
  @JsonKey()
  @override
  final int totalShortBreaksInSeconds;
  @JsonKey()
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
        (other.runtimeType == runtimeType &&
            other is _Stats &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(
                other.totalFocusedRoundInSeconds, totalFocusedRoundInSeconds) &&
            const DeepCollectionEquality().equals(
                other.totalShortBreaksInSeconds, totalShortBreaksInSeconds) &&
            const DeepCollectionEquality().equals(
                other.totalLongBreaksInSeconds, totalLongBreaksInSeconds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(totalFocusedRoundInSeconds),
      const DeepCollectionEquality().hash(totalShortBreaksInSeconds),
      const DeepCollectionEquality().hash(totalLongBreaksInSeconds));

  @JsonKey(ignore: true)
  @override
  _$StatsCopyWith<_Stats> get copyWith =>
      __$StatsCopyWithImpl<_Stats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatsToJson(this);
  }
}

abstract class _Stats extends Stats {
  factory _Stats(
      {required DateTime date,
      int totalFocusedRoundInSeconds,
      int totalShortBreaksInSeconds,
      int totalLongBreaksInSeconds}) = _$_Stats;
  _Stats._() : super._();

  factory _Stats.fromJson(Map<String, dynamic> json) = _$_Stats.fromJson;

  @override
  DateTime get date;
  @override
  int get totalFocusedRoundInSeconds;
  @override
  int get totalShortBreaksInSeconds;
  @override
  int get totalLongBreaksInSeconds;
  @override
  @JsonKey(ignore: true)
  _$StatsCopyWith<_Stats> get copyWith => throw _privateConstructorUsedError;
}
