import 'dart:io';

import 'package:hooks_riverpod/all.dart';

import '../../../models/round.dart';
import '../../../models/settings_state.dart';
import '../../../models/timer_state.dart';
import '../../../services/notifications_service.dart';
import '../../settings/controllers/bloc.dart';
import '../../stats/controllers/stats_controller.dart';
import '../../../services/files_service.dart';
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

final timerIsPlayingProvider = Provider.autoDispose<bool>((ref) {
  final state = ref.watch(timerControllerProvider.state);
  return state.isPlaying;
});
