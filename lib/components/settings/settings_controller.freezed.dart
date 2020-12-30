// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
class _$SettingsTearOff {
  const _$SettingsTearOff();

// ignore: unused_element
  _Settings call(
      {int focusInMinutes = _kDefaultFocusDuration,
      int shortBreakInMinutes = _kDefaultShortBreakDuration,
      int longBreakInMinutes = _kDefaultLongBreakDuration,
      int roundsLength = _kDefaultRoundsLength,
      String pomodoroThemeName = 'Pomotroid',
      bool autoStartWorkTimer = true,
      bool autoStartBreakTimer = true,
      bool desktopNotifications = true,
      bool desktopNotificationsSound = true}) {
    return _Settings(
      focusInMinutes: focusInMinutes,
      shortBreakInMinutes: shortBreakInMinutes,
      longBreakInMinutes: longBreakInMinutes,
      roundsLength: roundsLength,
      pomodoroThemeName: pomodoroThemeName,
      autoStartWorkTimer: autoStartWorkTimer,
      autoStartBreakTimer: autoStartBreakTimer,
      desktopNotifications: desktopNotifications,
      desktopNotificationsSound: desktopNotificationsSound,
    );
  }

// ignore: unused_element
  Settings fromJson(Map<String, Object> json) {
    return Settings.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Settings = _$SettingsTearOff();

/// @nodoc
mixin _$Settings {
  int get focusInMinutes;
  int get shortBreakInMinutes;
  int get longBreakInMinutes;
  int get roundsLength;
  String get pomodoroThemeName;
  bool get autoStartWorkTimer;
  bool get autoStartBreakTimer;
  bool get desktopNotifications;
  bool get desktopNotificationsSound;

  Map<String, dynamic> toJson();
  $SettingsCopyWith<Settings> get copyWith;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res>;
  $Res call(
      {int focusInMinutes,
      int shortBreakInMinutes,
      int longBreakInMinutes,
      int roundsLength,
      String pomodoroThemeName,
      bool autoStartWorkTimer,
      bool autoStartBreakTimer,
      bool desktopNotifications,
      bool desktopNotificationsSound});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res> implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  final Settings _value;
  // ignore: unused_field
  final $Res Function(Settings) _then;

  @override
  $Res call({
    Object focusInMinutes = freezed,
    Object shortBreakInMinutes = freezed,
    Object longBreakInMinutes = freezed,
    Object roundsLength = freezed,
    Object pomodoroThemeName = freezed,
    Object autoStartWorkTimer = freezed,
    Object autoStartBreakTimer = freezed,
    Object desktopNotifications = freezed,
    Object desktopNotificationsSound = freezed,
  }) {
    return _then(_value.copyWith(
      focusInMinutes: focusInMinutes == freezed
          ? _value.focusInMinutes
          : focusInMinutes as int,
      shortBreakInMinutes: shortBreakInMinutes == freezed
          ? _value.shortBreakInMinutes
          : shortBreakInMinutes as int,
      longBreakInMinutes: longBreakInMinutes == freezed
          ? _value.longBreakInMinutes
          : longBreakInMinutes as int,
      roundsLength:
          roundsLength == freezed ? _value.roundsLength : roundsLength as int,
      pomodoroThemeName: pomodoroThemeName == freezed
          ? _value.pomodoroThemeName
          : pomodoroThemeName as String,
      autoStartWorkTimer: autoStartWorkTimer == freezed
          ? _value.autoStartWorkTimer
          : autoStartWorkTimer as bool,
      autoStartBreakTimer: autoStartBreakTimer == freezed
          ? _value.autoStartBreakTimer
          : autoStartBreakTimer as bool,
      desktopNotifications: desktopNotifications == freezed
          ? _value.desktopNotifications
          : desktopNotifications as bool,
      desktopNotificationsSound: desktopNotificationsSound == freezed
          ? _value.desktopNotificationsSound
          : desktopNotificationsSound as bool,
    ));
  }
}

/// @nodoc
abstract class _$SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) then) =
      __$SettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int focusInMinutes,
      int shortBreakInMinutes,
      int longBreakInMinutes,
      int roundsLength,
      String pomodoroThemeName,
      bool autoStartWorkTimer,
      bool autoStartBreakTimer,
      bool desktopNotifications,
      bool desktopNotificationsSound});
}

/// @nodoc
class __$SettingsCopyWithImpl<$Res> extends _$SettingsCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(_Settings _value, $Res Function(_Settings) _then)
      : super(_value, (v) => _then(v as _Settings));

  @override
  _Settings get _value => super._value as _Settings;

  @override
  $Res call({
    Object focusInMinutes = freezed,
    Object shortBreakInMinutes = freezed,
    Object longBreakInMinutes = freezed,
    Object roundsLength = freezed,
    Object pomodoroThemeName = freezed,
    Object autoStartWorkTimer = freezed,
    Object autoStartBreakTimer = freezed,
    Object desktopNotifications = freezed,
    Object desktopNotificationsSound = freezed,
  }) {
    return _then(_Settings(
      focusInMinutes: focusInMinutes == freezed
          ? _value.focusInMinutes
          : focusInMinutes as int,
      shortBreakInMinutes: shortBreakInMinutes == freezed
          ? _value.shortBreakInMinutes
          : shortBreakInMinutes as int,
      longBreakInMinutes: longBreakInMinutes == freezed
          ? _value.longBreakInMinutes
          : longBreakInMinutes as int,
      roundsLength:
          roundsLength == freezed ? _value.roundsLength : roundsLength as int,
      pomodoroThemeName: pomodoroThemeName == freezed
          ? _value.pomodoroThemeName
          : pomodoroThemeName as String,
      autoStartWorkTimer: autoStartWorkTimer == freezed
          ? _value.autoStartWorkTimer
          : autoStartWorkTimer as bool,
      autoStartBreakTimer: autoStartBreakTimer == freezed
          ? _value.autoStartBreakTimer
          : autoStartBreakTimer as bool,
      desktopNotifications: desktopNotifications == freezed
          ? _value.desktopNotifications
          : desktopNotifications as bool,
      desktopNotificationsSound: desktopNotificationsSound == freezed
          ? _value.desktopNotificationsSound
          : desktopNotificationsSound as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Settings extends _Settings {
  _$_Settings(
      {this.focusInMinutes = _kDefaultFocusDuration,
      this.shortBreakInMinutes = _kDefaultShortBreakDuration,
      this.longBreakInMinutes = _kDefaultLongBreakDuration,
      this.roundsLength = _kDefaultRoundsLength,
      this.pomodoroThemeName = 'Pomotroid',
      this.autoStartWorkTimer = true,
      this.autoStartBreakTimer = true,
      this.desktopNotifications = true,
      this.desktopNotificationsSound = true})
      : assert(focusInMinutes != null),
        assert(shortBreakInMinutes != null),
        assert(longBreakInMinutes != null),
        assert(roundsLength != null),
        assert(pomodoroThemeName != null),
        assert(autoStartWorkTimer != null),
        assert(autoStartBreakTimer != null),
        assert(desktopNotifications != null),
        assert(desktopNotificationsSound != null),
        super._();

  factory _$_Settings.fromJson(Map<String, dynamic> json) =>
      _$_$_SettingsFromJson(json);

  @JsonKey(defaultValue: _kDefaultFocusDuration)
  @override
  final int focusInMinutes;
  @JsonKey(defaultValue: _kDefaultShortBreakDuration)
  @override
  final int shortBreakInMinutes;
  @JsonKey(defaultValue: _kDefaultLongBreakDuration)
  @override
  final int longBreakInMinutes;
  @JsonKey(defaultValue: _kDefaultRoundsLength)
  @override
  final int roundsLength;
  @JsonKey(defaultValue: 'Pomotroid')
  @override
  final String pomodoroThemeName;
  @JsonKey(defaultValue: true)
  @override
  final bool autoStartWorkTimer;
  @JsonKey(defaultValue: true)
  @override
  final bool autoStartBreakTimer;
  @JsonKey(defaultValue: true)
  @override
  final bool desktopNotifications;
  @JsonKey(defaultValue: true)
  @override
  final bool desktopNotificationsSound;

  @override
  String toString() {
    return 'Settings(focusInMinutes: $focusInMinutes, shortBreakInMinutes: $shortBreakInMinutes, longBreakInMinutes: $longBreakInMinutes, roundsLength: $roundsLength, pomodoroThemeName: $pomodoroThemeName, autoStartWorkTimer: $autoStartWorkTimer, autoStartBreakTimer: $autoStartBreakTimer, desktopNotifications: $desktopNotifications, desktopNotificationsSound: $desktopNotificationsSound)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Settings &&
            (identical(other.focusInMinutes, focusInMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.focusInMinutes, focusInMinutes)) &&
            (identical(other.shortBreakInMinutes, shortBreakInMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.shortBreakInMinutes, shortBreakInMinutes)) &&
            (identical(other.longBreakInMinutes, longBreakInMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.longBreakInMinutes, longBreakInMinutes)) &&
            (identical(other.roundsLength, roundsLength) ||
                const DeepCollectionEquality()
                    .equals(other.roundsLength, roundsLength)) &&
            (identical(other.pomodoroThemeName, pomodoroThemeName) ||
                const DeepCollectionEquality()
                    .equals(other.pomodoroThemeName, pomodoroThemeName)) &&
            (identical(other.autoStartWorkTimer, autoStartWorkTimer) ||
                const DeepCollectionEquality()
                    .equals(other.autoStartWorkTimer, autoStartWorkTimer)) &&
            (identical(other.autoStartBreakTimer, autoStartBreakTimer) ||
                const DeepCollectionEquality()
                    .equals(other.autoStartBreakTimer, autoStartBreakTimer)) &&
            (identical(other.desktopNotifications, desktopNotifications) ||
                const DeepCollectionEquality().equals(
                    other.desktopNotifications, desktopNotifications)) &&
            (identical(other.desktopNotificationsSound,
                    desktopNotificationsSound) ||
                const DeepCollectionEquality().equals(
                    other.desktopNotificationsSound,
                    desktopNotificationsSound)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(focusInMinutes) ^
      const DeepCollectionEquality().hash(shortBreakInMinutes) ^
      const DeepCollectionEquality().hash(longBreakInMinutes) ^
      const DeepCollectionEquality().hash(roundsLength) ^
      const DeepCollectionEquality().hash(pomodoroThemeName) ^
      const DeepCollectionEquality().hash(autoStartWorkTimer) ^
      const DeepCollectionEquality().hash(autoStartBreakTimer) ^
      const DeepCollectionEquality().hash(desktopNotifications) ^
      const DeepCollectionEquality().hash(desktopNotificationsSound);

  @override
  _$SettingsCopyWith<_Settings> get copyWith =>
      __$SettingsCopyWithImpl<_Settings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SettingsToJson(this);
  }
}

abstract class _Settings extends Settings {
  _Settings._() : super._();
  factory _Settings(
      {int focusInMinutes,
      int shortBreakInMinutes,
      int longBreakInMinutes,
      int roundsLength,
      String pomodoroThemeName,
      bool autoStartWorkTimer,
      bool autoStartBreakTimer,
      bool desktopNotifications,
      bool desktopNotificationsSound}) = _$_Settings;

  factory _Settings.fromJson(Map<String, dynamic> json) = _$_Settings.fromJson;

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
  bool get desktopNotifications;
  @override
  bool get desktopNotificationsSound;
  @override
  _$SettingsCopyWith<_Settings> get copyWith;
}
