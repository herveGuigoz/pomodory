import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import 'core/cache/hydrated_state_notifier.dart';
import 'core/defer_init.dart';
import 'features/settings/bloc/bloc.dart';
import 'features/timer/domain/notifications.dart';
import 'features/timer/view/timer.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DeferInit(
      create: () async {
        HydratedStateNotifier.storage = await HydratedStorage.build();
        final notificationService = await PomodoroNotification.init();
        await notificationService.requestMacOsPermission();
        return Pomodoro();
      },
    );
  }
}

class Pomodoro extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = useProvider(themeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pomodoro Timer',
      theme: theme.themeData,
      home: const Timer(),
    );
  }
}
