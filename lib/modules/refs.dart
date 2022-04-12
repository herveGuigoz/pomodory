import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomodory/models/activity.dart';
import 'package:pomodory/models/task.dart';
import 'package:pomodory/models/timer_state.dart';
import 'package:pomodory/modules/activity/logic/activity_manager.dart';
import 'package:pomodory/modules/tasks/logic/task_controller.dart';
import 'package:pomodory/modules/timer/timer_controller.dart';
import 'package:pomodory/views/settings/controllers/bloc.dart';

export '../models/round.dart';
export '../models/timer_state.dart';

final activityManagerProvider =
    StateNotifierProvider<ActivityManager, List<Activity>>(
  (ref) => ActivityManager(ref.read),
);

final timerControllerProvider =
    StateNotifierProvider<TimerController, TimerState>((ref) {
  final settings = ref.watch(settingsProvider);
  final activityManager = ref.read(activityManagerProvider.notifier);
  final controller = TimerController(settings, activityManager);

  return controller;
});

final currentRoundProvider = Provider((ref) {
  return ref.watch(timerControllerProvider).currentRound;
});

final timerIsPlayingProvider = Provider.autoDispose<bool>((ref) {
  final state = ref.watch(timerControllerProvider);
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

final tasksController = StateNotifierProvider<TaskController, List<Task>>(
  (ref) => TaskController(),
);

final taskProvider = Provider<Task>((ref) => throw UnimplementedError());

final selectedTaskProvider = Provider<Task?>((ref) {
  final controller = ref.watch(tasksController);
  if (controller.any((task) => task.selected)) {
    return controller.firstWhere((task) => task.selected);
  }
  return null;
});

final selectedProjectProvider = Provider<String>((ref) {
  final selectedTask = ref.watch(selectedTaskProvider);
  return selectedTask?.project ?? kDefaultProject;
});
