// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'intervals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
IntervalsSettings _$IntervalsSettingsFromJson(Map<String, dynamic> json) {
  return _IntervalsSettings.fromJson(json);
}

/// @nodoc
class _$IntervalsSettingsTearOff {
  const _$IntervalsSettingsTearOff();

// ignore: unused_element
  _IntervalsSettings call(
      {int currentRound = 1,
      int focus = _kDefaultFocusDuration,
      int shortBreak = _kDefaultShortBreakDuration,
      int longBreak = _kDefaultLongBreakDuration,
      int roundsLength = _kDefaultRoundsLength}) {
    return _IntervalsSettings(
      currentRound: currentRound,
      focus: focus,
      shortBreak: shortBreak,
      longBreak: longBreak,
      roundsLength: roundsLength,
    );
  }

// ignore: unused_element
  IntervalsSettings fromJson(Map<String, Object> json) {
    return IntervalsSettings.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $IntervalsSettings = _$IntervalsSettingsTearOff();

/// @nodoc
mixin _$IntervalsSettings {
  int get currentRound;
  int get focus;
  int get shortBreak;
  int get longBreak;
  int get roundsLength;

  Map<String, dynamic> toJson();
  $IntervalsSettingsCopyWith<IntervalsSettings> get copyWith;
}

/// @nodoc
abstract class $IntervalsSettingsCopyWith<$Res> {
  factory $IntervalsSettingsCopyWith(
          IntervalsSettings value, $Res Function(IntervalsSettings) then) =
      _$IntervalsSettingsCopyWithImpl<$Res>;
  $Res call(
      {int currentRound,
      int focus,
      int shortBreak,
      int longBreak,
      int roundsLength});
}

/// @nodoc
class _$IntervalsSettingsCopyWithImpl<$Res>
    implements $IntervalsSettingsCopyWith<$Res> {
  _$IntervalsSettingsCopyWithImpl(this._value, this._then);

  final IntervalsSettings _value;
  // ignore: unused_field
  final $Res Function(IntervalsSettings) _then;

  @override
  $Res call({
    Object currentRound = freezed,
    Object focus = freezed,
    Object shortBreak = freezed,
    Object longBreak = freezed,
    Object roundsLength = freezed,
  }) {
    return _then(_value.copyWith(
      currentRound:
          currentRound == freezed ? _value.currentRound : currentRound as int,
      focus: focus == freezed ? _value.focus : focus as int,
      shortBreak: shortBreak == freezed ? _value.shortBreak : shortBreak as int,
      longBreak: longBreak == freezed ? _value.longBreak : longBreak as int,
      roundsLength:
          roundsLength == freezed ? _value.roundsLength : roundsLength as int,
    ));
  }
}

/// @nodoc
abstract class _$IntervalsSettingsCopyWith<$Res>
    implements $IntervalsSettingsCopyWith<$Res> {
  factory _$IntervalsSettingsCopyWith(
          _IntervalsSettings value, $Res Function(_IntervalsSettings) then) =
      __$IntervalsSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int currentRound,
      int focus,
      int shortBreak,
      int longBreak,
      int roundsLength});
}

/// @nodoc
class __$IntervalsSettingsCopyWithImpl<$Res>
    extends _$IntervalsSettingsCopyWithImpl<$Res>
    implements _$IntervalsSettingsCopyWith<$Res> {
  __$IntervalsSettingsCopyWithImpl(
      _IntervalsSettings _value, $Res Function(_IntervalsSettings) _then)
      : super(_value, (v) => _then(v as _IntervalsSettings));

  @override
  _IntervalsSettings get _value => super._value as _IntervalsSettings;

  @override
  $Res call({
    Object currentRound = freezed,
    Object focus = freezed,
    Object shortBreak = freezed,
    Object longBreak = freezed,
    Object roundsLength = freezed,
  }) {
    return _then(_IntervalsSettings(
      currentRound:
          currentRound == freezed ? _value.currentRound : currentRound as int,
      focus: focus == freezed ? _value.focus : focus as int,
      shortBreak: shortBreak == freezed ? _value.shortBreak : shortBreak as int,
      longBreak: longBreak == freezed ? _value.longBreak : longBreak as int,
      roundsLength:
          roundsLength == freezed ? _value.roundsLength : roundsLength as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_IntervalsSettings implements _IntervalsSettings {
  _$_IntervalsSettings(
      {this.currentRound = 1,
      this.focus = _kDefaultFocusDuration,
      this.shortBreak = _kDefaultShortBreakDuration,
      this.longBreak = _kDefaultLongBreakDuration,
      this.roundsLength = _kDefaultRoundsLength})
      : assert(currentRound != null),
        assert(focus != null),
        assert(shortBreak != null),
        assert(longBreak != null),
        assert(roundsLength != null);

  factory _$_IntervalsSettings.fromJson(Map<String, dynamic> json) =>
      _$_$_IntervalsSettingsFromJson(json);

  @JsonKey(defaultValue: 1)
  @override
  final int currentRound;
  @JsonKey(defaultValue: _kDefaultFocusDuration)
  @override
  final int focus;
  @JsonKey(defaultValue: _kDefaultShortBreakDuration)
  @override
  final int shortBreak;
  @JsonKey(defaultValue: _kDefaultLongBreakDuration)
  @override
  final int longBreak;
  @JsonKey(defaultValue: _kDefaultRoundsLength)
  @override
  final int roundsLength;

  @override
  String toString() {
    return 'IntervalsSettings(currentRound: $currentRound, focus: $focus, shortBreak: $shortBreak, longBreak: $longBreak, roundsLength: $roundsLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IntervalsSettings &&
            (identical(other.currentRound, currentRound) ||
                const DeepCollectionEquality()
                    .equals(other.currentRound, currentRound)) &&
            (identical(other.focus, focus) ||
                const DeepCollectionEquality().equals(other.focus, focus)) &&
            (identical(other.shortBreak, shortBreak) ||
                const DeepCollectionEquality()
                    .equals(other.shortBreak, shortBreak)) &&
            (identical(other.longBreak, longBreak) ||
                const DeepCollectionEquality()
                    .equals(other.longBreak, longBreak)) &&
            (identical(other.roundsLength, roundsLength) ||
                const DeepCollectionEquality()
                    .equals(other.roundsLength, roundsLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentRound) ^
      const DeepCollectionEquality().hash(focus) ^
      const DeepCollectionEquality().hash(shortBreak) ^
      const DeepCollectionEquality().hash(longBreak) ^
      const DeepCollectionEquality().hash(roundsLength);

  @override
  _$IntervalsSettingsCopyWith<_IntervalsSettings> get copyWith =>
      __$IntervalsSettingsCopyWithImpl<_IntervalsSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IntervalsSettingsToJson(this);
  }
}

abstract class _IntervalsSettings implements IntervalsSettings {
  factory _IntervalsSettings(
      {int currentRound,
      int focus,
      int shortBreak,
      int longBreak,
      int roundsLength}) = _$_IntervalsSettings;

  factory _IntervalsSettings.fromJson(Map<String, dynamic> json) =
      _$_IntervalsSettings.fromJson;

  @override
  int get currentRound;
  @override
  int get focus;
  @override
  int get shortBreak;
  @override
  int get longBreak;
  @override
  int get roundsLength;
  @override
  _$IntervalsSettingsCopyWith<_IntervalsSettings> get copyWith;
}
