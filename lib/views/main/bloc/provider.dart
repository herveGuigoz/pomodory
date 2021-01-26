import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';

import '../../../models/round.dart';
import '../../../models/settings_state.dart';
import '../../../models/task.dart';
import '../../../models/timer_state.dart';
import '../../../services/files_service.dart';
import '../../../services/notifications_service.dart';
import '../../settings/controllers/bloc.dart';
import '../../stats/controllers/stats_controller.dart';
import '../../tasks/logic/task_controller.dart';
import '../domain/timer.dart';

export '../../../models/round.dart';
export '../../../models/timer_state.dart';

part 'notification_mixin.dart';
part 'timer_controller.dart';

final timerControllerProvider = StateNotifierProvider<TimerController>((ref) {
  final settings = ref.watch(settingsProvider.state);
  final statsController = ref.read(statsProvider);
  final controller = TimerController(settings, statsController);

  return controller;
});

final currentRoundProvider = Provider((ref) {
  return ref.watch(timerControllerProvider.state).currentRound;
});

final timerIsPlayingProvider = Provider.autoDispose<bool>((ref) {
  final state = ref.watch(timerControllerProvider.state);
  return state.isPlaying;
});

const pomodoroColor = Color.fromRGBO(219, 82, 77, 1);
const shortBreakColor = Color.fromRGBO(70, 142, 145, 1);
const longBreakColor = Color.fromRGBO(67, 126, 168, 1);

final colorFromCurrentRoundProvider = Provider((ref) {
  final round = ref.watch(currentRoundProvider);

  return round.when(
    work: () => pomodoroColor,
    shortBreak: () => shortBreakColor,
    longBreak: () => longBreakColor,
  );
});

final headlineProvider = Provider((ref) {
  return ref.watch(currentRoundProvider).maybeWhen(
        work: () => 'Time to work!',
        orElse: () => 'Time for a break',
      );
});

final tasksController = StateNotifierProvider((ref) {
  return TaskController();
});

final taskProvider = ScopedProvider<Task>(null);
