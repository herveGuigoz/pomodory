import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../settings/bloc/settings_state.dart';

part 'round.freezed.dart';

@freezed
abstract class Round implements _$Round {
  const Round._();

  const factory Round.work() = Work;
  const factory Round.shortBreak() = ShortBreak;
  const factory Round.longBreak() = LongBreak;

  Duration getRoundDuration(SettingsState settings) => when(
        work: () => Duration(minutes: settings.focusInMinutes),
        shortBreak: () => Duration(minutes: settings.shortBreakInMinutes),
        longBreak: () => Duration(minutes: settings.longBreakInMinutes),
      );

  bool autoStartNext(SettingsState settings) {
    return when(
      work: () => settings.autoStartBreakTimer,
      shortBreak: () => settings.autoStartWorkTimer,
      longBreak: () => false,
    );
  }
}
