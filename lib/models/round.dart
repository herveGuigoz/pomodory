import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'settings_state.dart';

part 'round.freezed.dart';

@freezed
abstract class Round implements _$Round {
  const Round._();

  const factory Round.work() = Work;
  const factory Round.shortBreak() = ShortBreak;
  const factory Round.longBreak() = LongBreak;

  Duration getRoundDuration(SettingsState settings) => when(
        work: () => Duration(seconds: settings.focusInMinutes),
        shortBreak: () => Duration(seconds: settings.shortBreakInMinutes),
        longBreak: () => Duration(seconds: settings.longBreakInMinutes),
      );

  bool autoStartNext(SettingsState settings) {
    return when(
      work: () => settings.autoStartBreakTimer,
      shortBreak: () => settings.autoStartWorkTimer,
      longBreak: () => false,
    );
  }
}
