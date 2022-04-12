// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingsState _$SettingsStateFromJson(Map<String, dynamic> json) {
  return _SettingsState.fromJson(json);
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _SettingsState call(
      {int focusInMinutes = _kDefaultFocusDuration,
      int shortBreakInMinutes = _kDefaultShortBreakDuration,
      int longBreakInMinutes = _kDefaultLongBreakDuration,
      int roundsLength = _kDefaultRoundsLength,
      String pomodoroThemeName = 'Pomotroid',
      bool autoStartWorkTimer = true,
      bool autoStartBreakTimer = true,
      bool notifications = true,
      bool sound = true}) {
    return _SettingsState(
      focusInMinutes: focusInMinutes,
      shortBreakInMinutes: shortBreakInMinutes,
      longBreakInMinutes: longBreakInMinutes,
      roundsLength: roundsLength,
      pomodoroThemeName: pomodoroThemeName,
      autoStartWorkTimer: autoStartWorkTimer,
      autoStartBreakTimer: autoStartBreakTimer,
      notifications: notifications,
      sound: sound,
    );
  }

  SettingsState fromJson(Map<String, Object?> json) {
    return SettingsState.fromJson(json);
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  int get focusInMinutes => throw _privateConstructorUsedError;
  int get shortBreakInMinutes => throw _privateConstructorUsedError;
  int get longBreakInMinutes => throw _privateConstructorUsedError;
  int get roundsLength => throw _privateConstructorUsedError;
  String get pomodoroThemeName => throw _privateConstructorUsedError;
  bool get autoStartWorkTimer => throw _privateConstructorUsedError;
  bool get autoStartBreakTimer => throw _privateConstructorUsedError;
  bool get notifications => throw _privateConstructorUsedError;
  bool get sound => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call(
      {int focusInMinutes,
      int shortBreakInMinutes,
      int longBreakInMinutes,
      int roundsLength,
      String pomodoroThemeName,
      bool autoStartWorkTimer,
      bool autoStartBreakTimer,
      bool notifications,
      bool sound});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? focusInMinutes = freezed,
    Object? shortBreakInMinutes = freezed,
    Object? longBreakInMinutes = freezed,
    Object? roundsLength = freezed,
    Object? pomodoroThemeName = freezed,
    Object? autoStartWorkTimer = freezed,
    Object? autoStartBreakTimer = freezed,
    Object? notifications = freezed,
    Object? sound = freezed,
  }) {
    return _then(_value.copyWith(
      focusInMinutes: focusInMinutes == freezed
          ? _value.focusInMinutes
          : focusInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      shortBreakInMinutes: shortBreakInMinutes == freezed
          ? _value.shortBreakInMinutes
          : shortBreakInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      longBreakInMinutes: longBreakInMinutes == freezed
          ? _value.longBreakInMinutes
          : longBreakInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      roundsLength: roundsLength == freezed
          ? _value.roundsLength
          : roundsLength // ignore: cast_nullable_to_non_nullable
              as int,
      pomodoroThemeName: pomodoroThemeName == freezed
          ? _value.pomodoroThemeName
          : pomodoroThemeName // ignore: cast_nullable_to_non_nullable
              as String,
      autoStartWorkTimer: autoStartWorkTimer == freezed
          ? _value.autoStartWorkTimer
          : autoStartWorkTimer // ignore: cast_nullable_to_non_nullable
              as bool,
      autoStartBreakTimer: autoStartBreakTimer == freezed
          ? _value.autoStartBreakTimer
          : autoStartBreakTimer // ignore: cast_nullable_to_non_nullable
              as bool,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as bool,
      sound: sound == freezed
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) then) =
      __$SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int focusInMinutes,
      int shortBreakInMinutes,
      int longBreakInMinutes,
      int roundsLength,
      String pomodoroThemeName,
      bool autoStartWorkTimer,
      bool autoStartBreakTimer,
      bool notifications,
      bool sound});
}

/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(
      _SettingsState _value, $Res Function(_SettingsState) _then)
      : super(_value, (v) => _then(v as _SettingsState));

  @override
  _SettingsState get _value => super._value as _SettingsState;

  @override
  $Res call({
    Object? focusInMinutes = freezed,
    Object? shortBreakInMinutes = freezed,
    Object? longBreakInMinutes = freezed,
    Object? roundsLength = freezed,
    Object? pomodoroThemeName = freezed,
    Object? autoStartWorkTimer = freezed,
    Object? autoStartBreakTimer = freezed,
    Object? notifications = freezed,
    Object? sound = freezed,
  }) {
    return _then(_SettingsState(
      focusInMinutes: focusInMinutes == freezed
          ? _value.focusInMinutes
          : focusInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      shortBreakInMinutes: shortBreakInMinutes == freezed
          ? _value.shortBreakInMinutes
          : shortBreakInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      longBreakInMinutes: longBreakInMinutes == freezed
          ? _value.longBreakInMinutes
          : longBreakInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      roundsLength: roundsLength == freezed
          ? _value.roundsLength
          : roundsLength // ignore: cast_nullable_to_non_nullable
              as int,
      pomodoroThemeName: pomodoroThemeName == freezed
          ? _value.pomodoroThemeName
          : pomodoroThemeName // ignore: cast_nullable_to_non_nullable
              as String,
      autoStartWorkTimer: autoStartWorkTimer == freezed
          ? _value.autoStartWorkTimer
          : autoStartWorkTimer // ignore: cast_nullable_to_non_nullable
              as bool,
      autoStartBreakTimer: autoStartBreakTimer == freezed
          ? _value.autoStartBreakTimer
          : autoStartBreakTimer // ignore: cast_nullable_to_non_nullable
              as bool,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as bool,
      sound: sound == freezed
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingsState extends _SettingsState {
  _$_SettingsState(
      {this.focusInMinutes = _kDefaultFocusDuration,
      this.shortBreakInMinutes = _kDefaultShortBreakDuration,
      this.longBreakInMinutes = _kDefaultLongBreakDuration,
      this.roundsLength = _kDefaultRoundsLength,
      this.pomodoroThemeName = 'Pomotroid',
      this.autoStartWorkTimer = true,
      this.autoStartBreakTimer = true,
      this.notifications = true,
      this.sound = true})
      : super._();

  factory _$_SettingsState.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsStateFromJson(json);

  @JsonKey()
  @override
  final int focusInMinutes;
  @JsonKey()
  @override
  final int shortBreakInMinutes;
  @JsonKey()
  @override
  final int longBreakInMinutes;
  @JsonKey()
  @override
  final int roundsLength;
  @JsonKey()
  @override
  final String pomodoroThemeName;
  @JsonKey()
  @override
  final bool autoStartWorkTimer;
  @JsonKey()
  @override
  final bool autoStartBreakTimer;
  @JsonKey()
  @override
  final bool notifications;
  @JsonKey()
  @override
  final bool sound;

  @override
  String toString() {
    return 'SettingsState(focusInMinutes: $focusInMinutes, shortBreakInMinutes: $shortBreakInMinutes, longBreakInMinutes: $longBreakInMinutes, roundsLength: $roundsLength, pomodoroThemeName: $pomodoroThemeName, autoStartWorkTimer: $autoStartWorkTimer, autoStartBreakTimer: $autoStartBreakTimer, notifications: $notifications, sound: $sound)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingsState &&
            const DeepCollectionEquality()
                .equals(other.focusInMinutes, focusInMinutes) &&
            const DeepCollectionEquality()
                .equals(other.shortBreakInMinutes, shortBreakInMinutes) &&
            const DeepCollectionEquality()
                .equals(other.longBreakInMinutes, longBreakInMinutes) &&
            const DeepCollectionEquality()
                .equals(other.roundsLength, roundsLength) &&
            const DeepCollectionEquality()
                .equals(other.pomodoroThemeName, pomodoroThemeName) &&
            const DeepCollectionEquality()
                .equals(other.autoStartWorkTimer, autoStartWorkTimer) &&
            const DeepCollectionEquality()
                .equals(other.autoStartBreakTimer, autoStartBreakTimer) &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications) &&
            const DeepCollectionEquality().equals(other.sound, sound));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(focusInMinutes),
      const DeepCollectionEquality().hash(shortBreakInMinutes),
      const DeepCollectionEquality().hash(longBreakInMinutes),
      const DeepCollectionEquality().hash(roundsLength),
      const DeepCollectionEquality().hash(pomodoroThemeName),
      const DeepCollectionEquality().hash(autoStartWorkTimer),
      const DeepCollectionEquality().hash(autoStartBreakTimer),
      const DeepCollectionEquality().hash(notifications),
      const DeepCollectionEquality().hash(sound));

  @JsonKey(ignore: true)
  @override
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsStateToJson(this);
  }
}

abstract class _SettingsState extends SettingsState {
  factory _SettingsState(
      {int focusInMinutes,
      int shortBreakInMinutes,
      int longBreakInMinutes,
      int roundsLength,
      String pomodoroThemeName,
      bool autoStartWorkTimer,
      bool autoStartBreakTimer,
      bool notifications,
      bool sound}) = _$_SettingsState;
  _SettingsState._() : super._();

  factory _SettingsState.fromJson(Map<String, dynamic> json) =
      _$_SettingsState.fromJson;

  @override
  int get focusInMinutes;
  @override
  int get shortBreakInMinutes;
  @override
  int get longBreakInMinutes;
  @override
  int get roundsLength;
  @override
  String get pomodoroThemeName;
  @override
  bool get autoStartWorkTimer;
  @override
  bool get autoStartBreakTimer;
  @override
  bool get notifications;
  @override
  bool get sound;
  @override
  @JsonKey(ignore: true)
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
