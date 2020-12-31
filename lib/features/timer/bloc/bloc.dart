import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';

import '../../../core/extensions/duration.dart';
import '../../settings/bloc/bloc.dart';
import '../../settings/bloc/settings_state.dart';
import '../../stats/bloc/stats_controller.dart';
import '../domain/badges.dart';
import '../domain/entities/round.dart';
import '../domain/notifications.dart';
import '../domain/timer.dart';

part 'bloc.freezed.dart';
part 'notification_mixin.dart';
part 'timer_controller.dart';
part 'timer_state.dart';

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
