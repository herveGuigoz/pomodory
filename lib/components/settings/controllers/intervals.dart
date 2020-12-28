import 'package:hooks_riverpod/all.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'intervals.freezed.dart';
part 'intervals.g.dart';

const kMinDurationValue = 1;
const kMaxDurationValue = 90;

const _kDefaultFocusDuration = 25;
const _kDefaultShortBreakDuration = 5;
const _kDefaultLongBreakDuration = 15;

const kMinRoundsNubers = 1;
const kMaxRoundsNubers = 12;
const _kDefaultRoundsLength = 4;

class IntervalsSettingsController extends StateNotifier<IntervalsSettings> {
  IntervalsSettingsController() : super(IntervalsSettings());

  void setFocusDurationAsInt(int value) => state = state.copyWith(
        focus: value,
      );

  void setShortBreakDurationAsInt(int value) => state = state.copyWith(
        shortBreak: value,
      );

  void setLongBreakDurationAsInt(int value) => state = state.copyWith(
        longBreak: value,
      );

  void setRoundsLength(int value) => state = state.copyWith(
        roundsLength: value,
      );

  void resetAllValues() => state = IntervalsSettings();
}

@freezed
abstract class IntervalsSettings with _$IntervalsSettings {
  factory IntervalsSettings({
    @Default(1) int currentRound,
    @Default(_kDefaultFocusDuration) int focus,
    @Default(_kDefaultShortBreakDuration) int shortBreak,
    @Default(_kDefaultLongBreakDuration) int longBreak,
    @Default(_kDefaultRoundsLength) int roundsLength,
  }) = _IntervalsSettings;

  factory IntervalsSettings.fromJson(Map<String, dynamic> json) =>
      _$IntervalsSettingsFromJson(json);
}

final intervalsProvider = StateNotifierProvider(
  (_) => IntervalsSettingsController(),
);
