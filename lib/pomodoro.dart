import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import 'core/defer_init.dart';
import 'features/settings/bloc/bloc.dart';
import 'features/timer/domain/notifications.dart';
import 'features/timer/pages/timer.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DeferInit(
      create: () async {
        await PomodoroNotification.init();
        // await service.requestPermission();
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
