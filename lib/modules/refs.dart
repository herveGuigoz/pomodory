import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';

import '../models/activity.dart';
import '../models/task.dart';
import '../views/settings/controllers/bloc.dart';
import 'activity/logic/activity_manager.dart';
import 'tasks/logic/task_controller.dart';
import 'timer/timer_controller.dart';

export '../models/round.dart';
export '../models/timer_state.dart';

final activityManagerProvider = StateNotifierProvider((ref) {
  return ActivityManager(ref.read);
});

final timerControllerProvider = StateNotifierProvider<TimerController>((ref) {
  final settings = ref.watch(settingsProvider.state);
  final activityManager = ref.read(activityManagerProvider);
  final controller = TimerController(settings, activityManager);

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

final selectedTaskProvider = Provider((ref) {
  final controller = ref.watch(tasksController.state);
  return controller.firstWhere((task) => task.selected, orElse: () => null);
});

final selectedProjectProvider = Provider<String>((ref) {
  final selectedTask = ref.watch(selectedTaskProvider);
  return selectedTask?.project ?? kDefaultProject;
});
